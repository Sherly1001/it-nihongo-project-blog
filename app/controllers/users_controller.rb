class UsersController < ApplicationController
  def show
    @user = current_user
    @blogs = Blog.all.filter {|b| b.user == current_user }
  end
end
