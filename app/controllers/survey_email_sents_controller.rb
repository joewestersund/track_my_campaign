class SurveyEmailSentsController < ApplicationController
  before_action :set_survey_email_sent, only: [:show, :edit, :update, :destroy]

  # GET /survey_email_sents
  # GET /survey_email_sents.json
  def index
    @survey_email_sents = SurveyEmailSent.all
  end

  # GET /survey_email_sents/1
  # GET /survey_email_sents/1.json
  def show
  end

  # GET /survey_email_sents/new
  def new
    @survey_email_sent = SurveyEmailSent.new
  end

  # GET /survey_email_sents/1/edit
  def edit
  end

  # POST /survey_email_sents
  # POST /survey_email_sents.json
  def create
    @survey_email_sent = SurveyEmailSent.new(survey_email_sent_params)

    respond_to do |format|
      if @survey_email_sent.save
        format.html { redirect_to @survey_email_sent, notice: 'Survey email sent was successfully created.' }
        format.json { render action: 'show', status: :created, location: @survey_email_sent }
      else
        format.html { render action: 'new' }
        format.json { render json: @survey_email_sent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /survey_email_sents/1
  # PATCH/PUT /survey_email_sents/1.json
  def update
    respond_to do |format|
      if @survey_email_sent.update(survey_email_sent_params)
        format.html { redirect_to @survey_email_sent, notice: 'Survey email sent was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @survey_email_sent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /survey_email_sents/1
  # DELETE /survey_email_sents/1.json
  def destroy
    @survey_email_sent.destroy
    respond_to do |format|
      format.html { redirect_to survey_email_sents_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_survey_email_sent
      @survey_email_sent = SurveyEmailSent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def survey_email_sent_params
      params.require(:survey_email_sent).permit(:database_instance_id, :contact_id, :email_address, :sent_date, :subject, :message, :survey_monkey_respondent_id, :response_received, :reminder_sent_date)
    end
end
