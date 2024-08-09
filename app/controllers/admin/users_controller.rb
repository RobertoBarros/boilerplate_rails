class Admin::UsersController < ApplicationController
  def index
    @sidebar = "users"
    @users = User.all
  end
end
