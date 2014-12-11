class UsersController < ApplicationController
  before_action :check_admin_user, only: [:new, :create, :index]
  before_action :check_signed_in_user, only: [:edit, :edit_password, :update, :update_password, :show, :destroy]
  before_action :set_user, only: [:show, :edit, :edit_password, :update, :update_password, :destroy]

  def index
    @users = User.where(get_conditions).page(params[:page]).per_page(page_size)
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params_admin_can_set)
    if @user.save
      flash[:notice] = "The new user has been created."
      if current_user.present?
        #an admin is creating this user.
        redirect_to users_path
      else
        sign_in @user
        redirect_to welcome_path
      end
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
        if @user.id == current_user.id
          format.html { redirect_to profile_edit_path, notice: 'Your profile was successfully updated.' }
          format.json { head :no_content }
        else
          format.html { redirect_to users_path, notice: 'The user profile was successfully updated.' }
          format.json { head :no_content }
        end
      else
        format.html { render action: 'edit' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
  end

  def destroy
    sign_out
    notice = 'User was successfully destroyed'
    begin
      @user.destroy
    rescue ActiveRecord::DeleteRestrictionError => e
      @user.errors.add(:base, e)
      notice = "User could not be destroyed. #{e.message}"
    end
    respond_to do |format|
      format.html { redirect_to signin_path, notice: notice }
      format.json { head :no_content }
    end
  end

  private
    def set_user
      if current_user.admin? && params[:id].present?
        @user = User.find(params[:id])
      else
        @user = current_user
      end
    end

    def user_params_user_can_set
      params.require(:user).permit(:first_name, :last_name, :password, :password_confirmation)
    end

    def user_params_admin_can_set
      params.require(:user).permit(:first_name, :last_name, :email, :admin, :password, :password_confirmation)
    end

    def get_conditions
      sf = SearchFilter.new

      sf.add_condition(:first_name,"ILIKE",:first_name,params)
      sf.add_condition(:last_name,"ILIKE",:last_name,params)
      sf.add_condition(:email,"ILIKE",:email,params)
      sf.add_condition(:admin,"=",:admin,params)

      sf.get_search_filter
    end

end
