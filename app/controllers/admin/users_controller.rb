class Admin::UsersController < ApplicationController
  def index
    @users = User.paginate page: params[:page], per_page: Settings.products.page
  end
end
