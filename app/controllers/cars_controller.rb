class CarsController < ApplicationController

  def index
    cars = Car.all
    render json: cars.as_json
  end

  def create
    car = Car.new(
      year: params[:year],
      model: params[:model]
      )
    car.save!
    render json: car.as_json
  end

  def update
    car = Car.find_by(id: params[:id])

    car.update!(
    year: params[:year],
    model: params[:model]
    )
    render json: car.as_json
  end

  def show
    car = Car.find_by(id: params[:id])
    render json: car.as_json
  end

  def destroy
    car = Car.find_by(id: params[:id])
    car.delete
    render json: {message: "You deleted this"}
  end
end
