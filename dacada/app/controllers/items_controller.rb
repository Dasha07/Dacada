class ItemsController < ApplicationController
    def index
        @browsing = false
        @categories = Category.all
        session[:cart] = [] unless session[:cart]
        session[:quantities] = [] unless session[:quantities]
        if params[:category_id]
            @browsing = true
            @deals = Item.where('DATE(deal_date) = ?', Date.today).where('category_id = ?', params[:category_id])
            @items = Item.where('DATE(deal_date) > ?', Date.today).where('category_id = ?', params[:category_id])
        else
            @deals = Item.where('DATE(deal_date) = ?', Date.today)
            @items = Item.where('DATE(deal_date) > ?', Date.today)
        end
        if !session[:user_id]
          return
        end
        @user = User.find session[:user_id]
    end

    def categorize
        redirect_to "/deals/#{params[:category_id]}"
        return
    end

    def deal
        redirect_to "/deal/#{params[:id]}/#{params[:type]}"
        return
    end

    def show
        @is_deal = false
        if params[:type] == 'deal'
            @is_deal = true
        end
        @item = Item.find params[:id]
        @reviews = @item.reviews
        @buyers = @item.buyers
    end

    def move
        session[:item_id] = params[:item_id]
        session[:added] = true
        redirect_to '/cart'
    end

end
