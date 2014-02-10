class SessionsController < ApplicationController
  def new

  end

  def create
    user = User.find_by(email: params[:email].downcase)
    if user && user.authenticate(params[:password])
      sign_in user
      if current_db.present?
        redirect_to database_instance_path(current_db)
      else
        redirect_to select_database_path #user has multiple DBs. have them select one.
      end
    else
      flash.now[:error] = "Invalid username / password"
      render 'new'
    end
  end

  def destroy
    sign_out
    redirect_to root_path
  end
end
