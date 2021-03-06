class ActivitiesController < ApplicationController
  before_action :set_activity, only: %i[ show edit update destroy ]
  before_action :authenticate_user!
  before_action :correct_user, only: [:edit, :update, :destroy]
  
  # GET /activities/:id or /activities.json
  def index
    @activities = Activity.all
  end

  def list_user_activities
    @activities = 
      Activity
      .where(user_id: params[:uid])
      .order("date DESC")
      .order("time DESC")
  end

  # GET /activities/1 or /activities/1.json
  def show
  end

  # GET /activities/new
  def new
    # @activity = Activity.new
    @activity = current_user.activities.build
  end

  # GET /activities/1/edit
  def edit
  end

  # POST /activities or /activities.json
  def create
    # @activity = Activity.new(activity_params)
    @activity = current_user.activities.build(activity_params)

    respond_to do |format|
      if @activity.save
        format.html { redirect_to activity_url(@activity), notice: "Activity was successfully created." }
        format.json { render :show, status: :created, location: @activity }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /activities/1 or /activities/1.json
  def update
    respond_to do |format|
      if @activity.update(activity_params)
        format.html { redirect_to activity_url(@activity), notice: "Activity was successfully updated." }
        format.json { render :show, status: :ok, location: @activity }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /activities/1 or /activities/1.json
  def destroy
    @activity.destroy

    respond_to do |format|
      format.html { redirect_to user_activities_path(current_user.id), notice: "Activity was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_activity
      @activity = Activity.find(params[:id])
    end

    def correct_user
      @activity = current_user.activities.find_by(id: params[:id])
      redirect_to user_activities_path(current_user.id), alert: "Not authorized to edit or delete this activity" if @activity.nil?
    end

    # Only allow a list of trusted parameters through.
    def activity_params
      params.require(:activity).permit(:name, :date, :time, :duration, :user_id)
    end
end
