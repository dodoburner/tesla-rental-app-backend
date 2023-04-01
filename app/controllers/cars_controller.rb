class CarsController < ApplicationController
  before_action :set_car, only: %i[show update destroy]
  before_action :authenticate_user!
  load_and_authorize_resource

  def index
    @cars = Car.all

    render json: @cars
  end

  def show
    render json: @car
  end

  def create
    @car = Car.new(car_params)

    if @car.save
      render json: @car, status: :created, location: @car
    else
      render json: @car.errors, status: :unprocessable_entity
    end
  end

  def update
    if @car.update(car_params)
      render json: @car
    else
      render json: @car.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @car.destroy
  end

  private

  def set_car
    @car = Car.find(params[:id])
  end

  def car_params
    params.require(:car).permit(:name, :image, :brand, :engine_type, :top_speed, :zero_to_sixty, :transmission, :range, :rent_per_day)
  end
end
