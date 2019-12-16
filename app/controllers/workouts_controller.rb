class WorkoutsController < ApplicationController
  before_action :get_user
  before_action :set_workout, only: [:show, :edit, :update, :destroy]

  def index
    redirect_to users_path(@user.username)
  end

  def show
    redirect_to users_path(@user.username)
  end

  # GET /workouts/new
  def new
    @workout = @user.workouts.build
  end

  # GET /workouts/1/edit
  def edit
  end

  # POST /workouts
  # POST /workouts.json
  def create
    @workout = @user.workouts.build(workout_params)

    respond_to do |format|
      if @workout.save
        format.html { redirect_to users_path(@user.username), notice: 'Workout was successfully created.' }
        format.json { render :show, status: :created, location: @workout }
      else
        format.html { render :new }
        format.json { render json: @workout.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /workouts/1
  # PATCH/PUT /workouts/1.json
  def update
    respond_to do |format|
      if @workout.update(workout_params)
        format.html { redirect_to users_path(@user.username), notice: 'Workout was successfully updated.' }
        format.json { render :show, status: :ok, location: @workout }
      else
        format.html { render :edit }
        format.json { render json: @workout.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /workouts/1
  # DELETE /workouts/1.json
  def destroy
    @workout.destroy
    respond_to do |format|
      format.html { redirect_to users_path(@user.username), notice: 'Workout was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def get_user
    @user = User.where(username: params[:user_id]).take
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_workout
    @workout = @user.workouts.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def workout_params
    params.require(:workout).permit(:title, :desc, :date, :intensity, :workout_type, :user_id)
  end
end
