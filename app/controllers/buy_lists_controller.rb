class BuyListsController < ApplicationController
  before_action :set_buy_list, only: %i[ show edit update destroy ]

  # GET /buy_lists or /buy_lists.json
  def index
    @buy_lists = BuyList.all
  end

  # GET /buy_lists/1 or /buy_lists/1.json
  def show
  end

  # GET /buy_lists/new
  def new
    @buy_list = BuyList.new
  end

  # GET /buy_lists/1/edit
  def edit
  end

  # POST /buy_lists or /buy_lists.json
  def create
    @buy_list = BuyList.new(buy_list_params)

    respond_to do |format|
      if @buy_list.save
        format.html { redirect_to buy_list_url(@buy_list), notice: "Buy list was successfully created." }
        format.json { render :show, status: :created, location: @buy_list }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @buy_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /buy_lists/1 or /buy_lists/1.json
  def update
    respond_to do |format|
      if @buy_list.update(buy_list_params)
        format.html { redirect_to buy_list_url(@buy_list), notice: "Buy list was successfully updated." }
        format.json { render :show, status: :ok, location: @buy_list }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @buy_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /buy_lists/1 or /buy_lists/1.json
  def destroy
    @buy_list.destroy

    respond_to do |format|
      format.html { redirect_to buy_lists_url, notice: "Buy list was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_buy_list
      @buy_list = BuyList.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def buy_list_params
      params.require(:buy_list).permit(:date, :location, :total, :list, :shopping_id, :status)
    end
end
