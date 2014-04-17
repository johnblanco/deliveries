class UsersController < ApplicationController
  def create
    @user = User.new(params[:user])
    if @user.save
      render :text => "OK"
    else
      render :text => "ERROR"
    end
  end
end
