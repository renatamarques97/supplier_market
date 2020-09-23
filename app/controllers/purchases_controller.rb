class PurchasesController < ApplicationController
  before_action :set_purchase, only: [:show, :update, :destroy]
  
  # GET /purchases
  def index
    @purchases = Purchase.all
  end
  
  # GET /purchases/id
  def show
  end
  
  # GET /purchases/new
  def new
    @purchase = Purchase.new
  end
  
    # POST /purchases
  def create
    @purchase = Purchase.new(purchase_params)
  
    respond_to do |format|
      if @purchase.save
        format.html { redirect_to @purchase, notice: 'Purchase was successfully created.' }
        format.json { render :show, status: :created, location: @purchase }
      else
        format.html { render :new }
        format.json { render json: @purchase.errors, status: :unprocessable_entity }
      end
    end
  end
  
    # DELETE /purchases/id
  def destroy
    @_purchase.destroy
    respond_to do |format|
      format.html { redirect_to purchases_url, notice: 'Purchase was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  private

  def set_purchase
    @_purchase = Purchase.find(params[:id])
  end
  
  def purchase_params
    params.require(:purchase).permit(:price, :discount, :final_price, :shipping)
  end
end
