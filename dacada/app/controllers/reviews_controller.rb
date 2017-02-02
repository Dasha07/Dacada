class ReviewsController < ApplicationController
  def index
      @user = User.find(session[:user_id])
      @item = Item.find(params[:id])
  end

  def create
      Review.create title:params[:title], content:params[:content], rating:params[:rating], item:Item.find(params[:id]), user:User.find(session[:user_id])
      redirect_to "/deal/#{params[:id]}"
  end
end
