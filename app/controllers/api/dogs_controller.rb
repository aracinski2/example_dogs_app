class Api::DogsController < ApplicationController
  def create
    @dog = Dog.new(
      name: params[:name],
      age: params[:age],
      breed: params[:breed]
    )
    render 'show.json.jb'
  end
end
