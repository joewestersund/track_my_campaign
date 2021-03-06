class Heal::TopicsController < ApplicationController
  before_action :check_current_db_exists
  before_action :check_has_write_permissions, except: [:index, :show]
  before_action :set_topic, only: [:show, :edit, :update, :destroy]

  # GET /topics
  # GET /topics.json
  def index
    @topics = current_db.topics.order(:order_in_list).page(params[:page]).per_page(page_size)
  end

  # GET /topics/1
  # GET /topics/1.json
  def show
  end

  # GET /topics/new
  def new
    @topic = Heal::Topic.new
  end

  # GET /topics/1/edit
  def edit
  end

  # POST /topics
  # POST /topics.json
  def create
    @topic = Heal::Topic.new(topic_params)
    @topic.database_instance = current_db

    respond_to do |format|
      if @topic.save
        format.html { redirect_to heal_topics_url, notice: 'Topic was successfully created.' }
        format.json { render action: 'show', status: :created, location: @topic }
      else
        format.html { render action: 'new' }
        format.json { render json: @topic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /topics/1
  # PATCH/PUT /topics/1.json
  def update
    respond_to do |format|
      if @topic.update(topic_params)
        format.html { redirect_to heal_topics_url, notice: 'Topic was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @topic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /topics/1
  # DELETE /topics/1.json
  def destroy
    notice = 'Topic was successfully destroyed'
    begin
      @topic.destroy
    rescue ActiveRecord::DeleteRestrictionError => e
      @topic.errors.add(:base, e)
      notice = "Topic could not be destroyed. #{e.message}"
    end
    respond_to do |format|
      format.html { redirect_to heal_topics_url, notice: notice }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_topic
      @topic = current_db.topics.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def topic_params
      params.require(:heal_topic).permit(:name, :order_in_list)
    end
end
