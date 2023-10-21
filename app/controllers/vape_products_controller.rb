class VapeProductsController < ApplicationController
  before_action :set_vape_product, only: %i[ show edit update destroy ]

  # GET /vape_products or /vape_products.json
  def index
    @vape_products = VapeProduct.all
    @products_by_category = VapeProduct.order(:category)
    @categories = VapeProduct.pluck(:category).uniq
  end

  def show_category
    @category = params[:category]
    @products = VapeProduct.where(category: @category)
  end
  
  # GET /vape_products/1 or /vape_products/1.json
  def show
  end

  # GET /vape_products/new
  def new
    @vape_product = VapeProduct.new
  end

  # GET /vape_products/1/edit
  def edit
  end

  # POST /vape_products or /vape_products.json
  def create
    @vape_product = VapeProduct.new(vape_product_params)

    respond_to do |format|
      if @vape_product.save
        format.html { redirect_to vape_product_url(@vape_product), notice: "Vape product was successfully created." }
        format.json { render :show, status: :created, location: @vape_product }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @vape_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vape_products/1 or /vape_products/1.json
  def update
    respond_to do |format|
      if @vape_product.update(vape_product_params)
        format.html { redirect_to vape_product_url(@vape_product), notice: "Vape product was successfully updated." }
        format.json { render :show, status: :ok, location: @vape_product }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @vape_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vape_products/1 or /vape_products/1.json
  def destroy
    @vape_product.destroy!

    respond_to do |format|
      format.html { redirect_to vape_products_url, notice: "Vape product was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vape_product
      @vape_product = VapeProduct.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def vape_product_params
      params.require(:vape_product).permit(:name, :price, :desc, :category)
    end
end
