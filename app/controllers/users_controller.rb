class UsersController < ApplicationController
  before_action :check_admin_user, only: [:new, :create]
  before_action :check_signed_in_user, only: [:edit, :edit_password, :update, :update_password, :show, :destroy, :index]
  before_action :set_user, only: [:show, :edit, :edit_password, :update, :update_password, :destroy]
  before_action :set_select_options, only: [:new, :edit]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params_admin_can_set)
    if @user.save
      sign_in @user
      flash[:notice] = "The new user has been created."
      redirect_to welcome_path
    else
      render 'new'
    end
  end

  def edit
  end

  def edit_password
  end

  def update
    respond_to do |format|
      if current_user.admin?
        success = @user.update(user_params_admin_can_set)
      else
        success = @user.update(user_params_user_can_set)
      end

      if success
        format.html { redirect_to profile_edit_path, notice: 'Your profile was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
  end

  def index
    render 'new' unless current_user.present? && current_user.admin?
    @users = User.all
  end

  def destroy
    sign_out
    @user.destroy
    respond_to do |format|
      format.html { redirect_to signin_path }
      format.json { head :no_content }
    end
  end

  private
    def set_user
      @user = current_user
    end

    def user_params_user_can_set
      params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
    end

    def user_params_admin_can_set
      params.require(:user).permit(:first_name, :last_name, :email, :organization_id, :admin, :password, :password_confirmation)
    end

    def set_select_options
      @organizations = Organization.all
    end

end
