class UsersController < ApplicationController
  before_action :load_user, only: [:update, :show, :edit]
  before_action :correct_user, only: [:edit, :update]

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      flash["success"] = t "user.messages.sign_in_sucess"
      redirect_to root_url
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @user.update_attributes user_params
      flash[:success] = t :profile_updated
      redirect_to root_url
    else
      render :edit
    end
  end

  private
  def load_user
    @user = User.find_by id: params[:id]
  end

  def user_params
    params.require(:user).permit :name, :email, :password, :password_confirmation
  end

  def correct_user
    redirect_to root_url unless current_user? @user
  end
end
