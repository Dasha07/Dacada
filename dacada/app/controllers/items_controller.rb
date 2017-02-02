class ItemsController < ApplicationController
  def index
    @deals = Item.where('DATE(deal_date) = ?', Date.today)
    @items = Item.where('DATE(deal_date) > ?', Date.today)
    if !session[:user_id]
      return
    end
    @user = User.find session[:user_id]
  end

  def show
    @item = Item.find params[:id]
    @reviews = @item.reviews
  end

  def move
    session[:item_id] = params[:item_id]
    session[:added] = true
    redirect_to '/cart'
  end

end
