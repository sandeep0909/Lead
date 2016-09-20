class UsersController < ApplicationController
  before_action :authorize, only: [:show]
  before_filter :admin_only, :except => :show
  def index
    @users = User.all
  end

  def show

    @user = User.find(params[:id])

  end

  def new
    @user = User.new
  end

  def edit
  end

  def create
    @user=User.new(user_params)
    if @user.save
      redirect_to root_path
    else
      redirect_to :new
    end
  end

  def update
  end

  def destroy
  end
  private

  def admin_only
    unless current_user.admin?
      redirect_to :back, :alert => "Access denied."
    end
  end

  #strong params: only these fields are allowed from forms:
  private
  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
