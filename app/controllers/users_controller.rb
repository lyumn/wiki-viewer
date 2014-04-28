class UsersController < ApplicationController


  def new
    @user = User.new
    if @user.save
      # Handle a successful save.
    else
      render 'new'
    end 
  end
end