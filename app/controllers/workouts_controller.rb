class WorkoutsController < ApplicationController
  before_action :require_login

  def index
    @workouts = Workout.all
  end

  def new
    @workout = Workout.new
  end

  def create
    @workout = Workout.create(workout_params)
    if @workout.valid?
      @workout.save
      redirect_to workout_path(@workout)
    else
      render :new
    end
  end

  def show
    @workout = Workout.find(params[:id])
  end

  def edit
    @workout = Workout.find(params[:id])
  end

  def update
    @workout = Workout.find(params[:id])
    @workout.update(workout_params)
    redirect_to workout_path(@workout)
  end

  def destroy
    @workout = Workout.find(params[:id])
    @workout.destroy
    redirect_to workouts_path
  end

  private
    def workout_params
      params.require(:workout).permit(:name, :workout_type)
    end

end
