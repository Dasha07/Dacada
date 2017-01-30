class UsersController < ApplicationController
  def login
  end

  def register
  end

  def create
    user = User.create(first_name: params[:first_name], last_name: params[:last_name], city: params[:city], state: params[:state], street: params[:street], email: params[:email], password: params[:password], notification: params[:notification], card_number: params[:card_number],password_confirmation: params[:password_confirm])
    flash[:errors] = user.errors.messages
    if !user.errors.messages.empty?
      redirect_to '/register'
      return
    else
      redirect_to '/login'
      return
    end
  end


  def login_user
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id]= user.id
      redirect_to '/deals'
    else
      flash[:errors] = {:login=> ['Invalid email/password']}
      redirect_to '/login'
    end
  end

  def show

  end

  def edit
  end
def logout
  session[:user_id] = nil
  redirect_to '/login'
end
end
