class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @pins = @user.pins.paginate(:page => params[:page], :per_page => 20)
  end
end