class UsersController < ApplicationController
  before_action :verify_login, except: [:new, :create]

  before_action :set_user, only: [:show, :edit, :update, :destroy]
  def index
    @users = User.all
  end

  def show
  end

  def create
    puts params[:user]
    User. create(user_params)
    flash[:notice] = "Just testing..."
    redirect_to users_path
  end

  def update
    if @user.update(user_params)
      flash[:notice] = "Great Work!"
      redirect_to user_path @user
    else
      flash[:alert] = "There was an error updating"
      redirect_to user_edit_path(@user)
    end
  end

  def destroy
    @user.destroy
    respond_to do |format|
      session[:user_id] = nil if @user.id == @current_user.id
      format.html { redirect_to users_url, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def new
    @user = User.new
  end

  def edit
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:email, :password, :fname, :lname)
  end
end
