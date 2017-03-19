class DogsController < ApplicationController
  def index
    @dogs = Dog.where(nil).page(params[:page])
    filtering_params(params).each do |k, v|
      @dogs = @dogs.public_send(k, v) if v.present?
    end
  end

  def show
    @dog = Dog.find(params[:id])
  end

  private

    def filtering_params(params)
      params.slice(:by_gender, :by_breed, :by_owner, :search)
    end
end
