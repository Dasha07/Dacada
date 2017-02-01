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
      session[:added] = false
      puts "THIS IS PARAMS ITEM ID: #{params[:item_id]}"
      session[:cart].push params[:item_id].to_i
      session[:quantities].push params[:quantity].to_i
      puts " #{session[:cart]}this is cart"
      puts " #{session[:quantities]}this is quantities"
      redirect_to '/cart'
    end

    def make_purchase
        if Purchase.first
            previous_order = Purchase.last.id
            order_num = previous_order + 1
        else
            order_num = 1
        end
        puts session[:cart]
        session[:cart].each_with_index do |item_id, index|
            puts "This is item_id #{item_id} and quantity #{session[:quantities][index]}"
            Purchase.create shipping_cost:3, shipping_time:48, user:User.find(session[:user_id]), item:Item.find(item_id), quantity:session[:quantities][index]
        end
        #add order_num to models and append ", order_num:order_num"
        redirect_to '/cart'
    end

    def remove
      session[:cart].delete_at(params[:index].to_i)
      session[:quantities].delete_at(params[:index].to_i)
      redirect_to '/cart'
    end
end
