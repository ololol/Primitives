class SessionsController <  ApplicationController
  def new
  end

  def create
    user = User.find_by_user_login(params[:user_login])
    if user.try(:authenticate, params[:password])
      session[:user_id] = user.user_id
      redirect_to :battlefield, :notice => "Logged in!"
    else
      flash.now.alert = "Invalid email or password"
      redirect_to :error_page, :error => "Invalid email or password"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Logged out!"
  end
end