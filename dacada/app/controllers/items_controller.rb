class ItemsController < ApplicationController
  def index
    session[:cart] = [] unless session[:cart]
    session[:quantities] = [] unless session[:quantities]
    @deals = Item.where('DATE(deal_date) = ?', Date.today)
    @items = Item.where('DATE(deal_date) > ?', Date.today)
    if !session[:user_id]
      return
    end
    @user = User.find session[:user_id]
  end

  def deal
      redirect_to "/deal/#{params[:id]}/#{params[:type]}"
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
