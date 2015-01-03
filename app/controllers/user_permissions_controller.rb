class UserPermissionsController < ApplicationController
  before_action :check_admin_user, except: [:select_database, :home]
  before_action :set_user_permission, only: [:show, :edit, :update, :destroy]
  before_action :set_select_options, only: [:index, :new, :edit]

  # GET /user_permissions
  # GET /user_permissions.json
  def index
    @user_permissions = UserPermission.where(get_conditions).page(params[:page]).per_page(page_size)
  end

  # GET /user_permissions/1
  # GET /user_permissions/1.json
  def show
  end

  # GET /user_permissions/new
  def new
    @user_permission = UserPermission.new
  end

  # GET /user_permissions/1/edit
  def edit
  end

  # POST /user_permissions
  # POST /user_permissions.json
  def create
    @user_permission = UserPermission.new(user_permission_params)

    respond_to do |format|
      if @user_permission.save
        format.html { redirect_to user_permissions_path, notice: 'User permission was successfully created.' }
        format.json { render action: 'show', status: :created, location: @user_permission }
      else
        set_select_options
        format.html { render action: 'new' }
        format.json { render json: @user_permission.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_permissions/1
  # PATCH/PUT /user_permissions/1.json
  def update
    respond_to do |format|
      if @user_permission.update(user_permission_params)
        format.html { redirect_to user_permissions_path, notice: 'User permission was successfully updated.' }
        format.json { head :no_content }
      else
        set_select_options
        format.html { render action: 'edit' }
        format.json { render json: @user_permission.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_permissions/1
  # DELETE /user_permissions/1.json
  def destroy
    user_id = @user_permission.user_id
    dbi = @user_permission.database_instance
    if (dbi.communications.joins(:staff_involved).where("user_id = ?", user_id).count > 0 ||
        dbi.milestones.where(assigned_to_id: user_id).count > 0 ||
        dbi.followup_tasks.where("assigned_to_id = ? OR assigned_by_id = ? OR completed_by_id = ?",user_id,user_id,user_id).count > 0)
      notice = "User permission could not be destroyed, because this user has has dependent communications, milestones or followup tasks in this database."
    else
      begin
        @user_permission.destroy
        notice = 'User permission was successfully destroyed'
      rescue ActiveRecord::DeleteRestrictionError => e
        @user_permission.errors.add(:base, e)
        notice = "User permission could not be destroyed. #{e.message}"
      end
    end
    respond_to do |format|
      format.html { redirect_to user_permissions_url, notice: notice }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_permission
      @user_permission = UserPermission.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_permission_params
      params.require(:user_permission).permit(:database_instance_id, :user_id, :read_only)
    end

    def set_select_options
      @database_instances = DatabaseInstance.all
      @users = User.all
    end

    def get_conditions
      sf = SearchFilter.new

      sf.add_condition(:user_id,"=",:user_id,params)
      sf.add_condition(:database_instance_id,"=",:database_instance_id,params)
      sf.add_condition(:read_only,"=",:read_only,params)

      sf.get_search_filter
    end
end
