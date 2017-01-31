class ItemsController < ApplicationController
  def index
    @user = User.find session[:user_id]
    @items = Item.all
    render 'index'
  end

  def show
    @item = Item.find params[:id]
  end

end
