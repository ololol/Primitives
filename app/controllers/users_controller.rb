class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    #@user.hero_id= 0
    if @user.save
      session[:user_id] = @user.user_id
      redirect_to :create_primitive, :notice => "Signed up!"
    else
      redirect_to root_path, :notice => "Wrong e-mail/password!"
    end
  end


  def battlefield
  end
end
