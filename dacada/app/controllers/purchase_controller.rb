class PurchaseController < ApplicationController
  def show
    puts session
    @item =Item.find session[:item_id]
    session[:cart] = [] unless session[:cart]
    @cart = session[:cart]
    puts session[:cart]
    @added = session[:added]
  end

  def add_to_cart
    session[:added] = false
    puts "THIS IS PARAMS ITEM ID: #{params[:item_id]}"
    session[:cart].push params[:item_id].to_i
    puts " #{session[:cart]}this this add to cart"
    redirect_to '/cart'
  end

  def cancel
    session[:cart].delete_at(params[:index].to_i)
    redirect_to '/cart'
  end

end
