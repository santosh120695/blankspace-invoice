class SoldProductsController < ApplicationController
  before_action :set_sold_product, only: [:show, :edit, :update, :destroy]

  # GET /sold_products
  # GET /sold_products.json
  def index
    @sold_products = SoldProduct.all
  end

  # GET /sold_products/1
  # GET /sold_products/1.json
  def show
  end

  # GET /sold_products/new
  def new
    @sold_product = SoldProduct.new
  end

  # GET /sold_products/1/edit
  def edit
  end

  # POST /sold_products
  # POST /sold_products.json
  def create
    @sold_product = SoldProduct.new(sold_product_params)

    respond_to do |format|
      if @sold_product.save
        format.html { redirect_to @sold_product, notice: 'Sold product was successfully created.' }
        format.json { render :show, status: :created, location: @sold_product }
      else
        format.html { render :new }
        format.json { render json: @sold_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sold_products/1
  # PATCH/PUT /sold_products/1.json
  def update
    respond_to do |format|
      if @sold_product.update(sold_product_params)
        format.html { redirect_to @sold_product, notice: 'Sold product was successfully updated.' }
        format.json { render :show, status: :ok, location: @sold_product }
      else
        format.html { render :edit }
        format.json { render json: @sold_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sold_products/1
  # DELETE /sold_products/1.json
  def destroy
    @sold_product.destroy
    respond_to do |format|
      format.html { redirect_to sold_products_url, notice: 'Sold product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sold_product
      @sold_product = SoldProduct.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sold_product_params
      params.require(:sold_product).permit(:product_id, :invoice_id, :sold_price, :sold_quantity)
    end
end
