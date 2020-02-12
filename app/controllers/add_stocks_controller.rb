class AddStocksController < ApplicationController
  before_action :set_add_stock, only: [:show, :edit, :update, :destroy]

  # GET /add_stocks
  # GET /add_stocks.json
  def index
    @add_stocks = AddStock.all
  end

  # GET /add_stocks/1
  # GET /add_stocks/1.json
  def show
  end

  # GET /add_stocks/new
  def new
    @add_stock = AddStock.new
  end

  # GET /add_stocks/1/edit
  def edit
  end

  # POST /add_stocks
  # POST /add_stocks.json
  def create
    @add_stock = AddStock.new(add_stock_params)

    respond_to do |format|
      if @add_stock.save
        format.html { redirect_to @add_stock, notice: 'Add stock was successfully created.' }
        format.json { render :show, status: :created, location: @add_stock }
      else
        format.html { render :new }
        format.json { render json: @add_stock.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /add_stocks/1
  # PATCH/PUT /add_stocks/1.json
  def update
    respond_to do |format|
      if @add_stock.update(add_stock_params)
        format.html { redirect_to @add_stock, notice: 'Add stock was successfully updated.' }
        format.json { render :show, status: :ok, location: @add_stock }
      else
        format.html { render :edit }
        format.json { render json: @add_stock.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /add_stocks/1
  # DELETE /add_stocks/1.json
  def destroy
    @add_stock.destroy
    respond_to do |format|
      format.html { redirect_to add_stocks_url, notice: 'Add stock was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_add_stock
      @add_stock = AddStock.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def add_stock_params
      params.require(:add_stock).permit(:product_id, :quantity)
    end
end
