class DogsController < ApplicationController

  def create
    if current_user
      dog = Dog.new(
      name: params[:name],
      age: params[:age],
      breed: params[:breed]
    )
    dog.save
    render json: {message: dog}
    else
    render json: {error: "You must be logged in to create dogs"}
    end
  end
end
