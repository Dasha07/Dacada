class PurchasesController < ApplicationController
    def show
      @item =Item.find session[:item_id]
      session[:cart] = [] unless session[:cart]
      session[:quantities] = [] unless session[:quantities]
      @prices = [] unless @prices
      @cart = session[:cart]
      @added = session[:added]
      @cart.each_with_index do |id, index|
          @prices[index] = Item.find(id).price * session[:quantities][index]
      end
      @total = @prices.inject(0){|sum,x| sum + x }
    end

    def add_to_cart
        item = Item.find(params[:item_id])
        if item.stock < params[:quantity].to_i
            if item.stock == 0
                flash[:error] = {:item=> ["We're sorry, but we are out of stock for #{item.name}."]}
            elsif item.stock == 1
                flash[:error] = {:item=> ["We're sorry, but there is only #{item.stock} unit available for #{item.name}."]}
            else
                flash[:error] = {:item=> ["We're sorry, but there are only #{item.stock} units available for #{item.name}."]}
            end
        else
            session[:added] = false
            session[:cart].push params[:item_id].to_i
            session[:quantities].push params[:quantity].to_i
        end
        redirect_to '/cart'
    end

    def make_purchase
        if !session[:user_id]
            flash[:error] = {:user=> ["Login or register ", " to purchase"]}
            puts flash[:error]
            redirect_to '/cart'
            return
        else
            order = Order.create user:User.find(session[:user_id])
            session[:cart].each_with_index do |item_id, index|
                puts "This is item_id #{item_id} and quantity #{session[:quantities][index]}"
                Purchase.create shipping_cost:3, shipping_time:48, user:User.find(session[:user_id]), item:Item.find(item_id), quantity:session[:quantities][index], order:order
                Item.find(item_id).adjust_stock(session[:quantities][index])
            end
            session.delete(:cart)
            session.delete(:quantities)
            redirect_to '/cart'
            return
        end
    end

    def remove
      session[:cart].delete_at(params[:index].to_i)
      session[:quantities].delete_at(params[:index].to_i)
      redirect_to '/cart'
    end
end
