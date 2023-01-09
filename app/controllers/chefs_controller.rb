class ChefsController < ApplicationController
  def show
    @chef = Chef.find(params[:id])
  end

  def update
    dish = Dish.find(strong_params[:dish_id])
    dish.update!(chef_id: params[:id])
    redirect_to chef_path(params[:id])
  end

  private
  def strong_params
    params.require(:chef).permit(:dish_id)
  end
end