

module SessionsHelper
  def sign_in(user)
    remember_token = User.new_remember_token
    cookies.permanent[:remember_token] = remember_token
    user.update_attribute(:remember_token, User.encrypt(remember_token))
    self.current_user = user
    set_default_current_db
  end

  def signed_in?
    !current_user.nil?
  end

  def admin_user?
    current_user.present? && current_user.admin
  end

  def sign_out
    self.current_user = nil
    cookies.delete(:remember_token)
  end

  def check_signed_in_user
    redirect_to signin_path, notice: "Please sign in." unless signed_in?
  end

  def check_admin_user
    redirect_to signin_path, notice: "This action requires admin permissions." unless admin_user?
  end

  def check_has_write_permissions
    redirect_to signin_path, notice: "This action requires admin permissions." unless has_write_permissions?
  end

  def has_write_permissions?
    if current_db.present?
      p = current_db.user_permissions.where(user: current_user)
      return true if p.present? and p.read_only == false
    end
    false
  end

  def check_current_db_exists
    if current_db.nil?
      set_default_current_db
      #now, try again to see if current_db is set
      redirect_to signin_path, notice: "Please choose a database instance." if current_db.nil?
    end
  end

  def current_user=(user)
    @current_user = user
  end

  def current_user
    remember_token = User.encrypt(cookies[:remember_token])
    @current_user ||= User.find_by(remember_token: remember_token)
  end

  def current_db
    instance_id = session[:current_database_instance_id]
    if instance_id.present? and db_instance_ids_this_user.include?(instance_id)
      return DatabaseInstance.find(instance_id)
    else
      return nil
    end
  end

  def set_current_db(instance)
    if current_user.present? and db_instances_this_user.include?(instance)
      session[:current_database_instance_id] = instance.id
      return true
    else
      return false
    end
  end

  def set_default_current_db
    instances = db_instances_this_user
    if instances.count == 1
      session[:current_database_instance_id] = instances.first.id
    else
      session[:current_database_instance_id] = nil #clear the variable
    end
  end

  def db_instances_this_user
    if current_user.present?
      if current_user.admin?
        #admins have access to all database instances
        return DatabaseInstance.all
      else
        #if user isn't an admin, then they will have an organization_id.
        return current_user.database_instances.all
      end
    else
      return []
    end
  end

  def db_instance_ids_this_user
    db_instances_this_user.map{|dbi| dbi.id }
  end

end
