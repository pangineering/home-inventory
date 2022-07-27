class InventoryController < ApplicationController
  include Authentication
  def index
    @inventory = Inventory.all
  end
  def show
    @inventory = Inventory.find_by_item_id(params[:item_id])
  end

  def new
    @inventory = Inventory.new
  end

  def create
    @inventory = Inventory.new(inventory_params)


    if @inventory.save
      redirect_to @inventory
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @inventory = Inventory.find_by_item_id(params[:item_id])
  end

  def update
    @inventory = Inventory.find_by_item_id(params[:item_id])

    if @inventory.update(inventory_params)
      redirect_to @inventory
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private
    def inventory_params
      params.require(:inventory).permit(:item_id, :item_name, :item_qty, :item_purchase_date)
    end
end