class EquipmentController < ApplicationController

  def create
    @user = User.find(params[:user_id])
    @equipment = @user.equipment.create(equipment_params)
    redirect_to user_path(@user)
  end

  def destroy
    @user = User.find(params[:user_id])
    @equipment = @user.equipment.find(params[:id])
    @equipment.destroy
    redirect_to user_path(@user)
  end

  private

  def equipment_params
    params.require(:equipment).permit(:typ, :make, :info)
  end

end
