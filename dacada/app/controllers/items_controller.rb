class ItemsController < ApplicationController
  def index
    @items = Item.all
    if !session[:user_id]
      return
    end
    @user = User.find session[:user_id]
  end

  def show
    @item = Item.find params[:id]
  end

  def move
    session[:item_id] = params[:item_id]
    session[:added] = true
    redirect_to '/cart'
  end

end
