class HerosController < ApplicationController
  def new
    @hero = Hero.new
  end

  def create
    @hero = Hero.new(params[:hero])
    if @hero.save
      current_user.hero_id = @hero.hero_id
      redirect_to :battlefield, :notice => "Logged in!"
    else
      redirect_to root_path, :notice => "Wrong e-mail/password!"
    end
  end
end