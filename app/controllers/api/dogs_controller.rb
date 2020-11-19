class Api::DogsController < ApplicationController
  def create
    @dog = Dog.new(
      name: params[:name],
      age: params[:age],
      breed: params[:breed]
    )
    if current_user
      render 'show.json.jb'
    else
      render json: []
    end
  end
end
