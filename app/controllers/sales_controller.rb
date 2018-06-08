class SalesController < ApplicationController
  before_action :set_sale, only: [:show, :edit, :update, :destroy]

  # GET /sales
  # GET /sales.json
  def index
    @sales = Sale.all
    @sale_entry = SalesEntry.all
  end

  # GET /sales/1
  # GET /sales/1.json
  def show
   @sale_entry = SalesEntry.all
  end

  # GET /sales/new
  def new
    @sale = Sale.new
      2.times do
    @sale.sales_entries.build
  end
  end
  
   def invoice
    @sale = Sale.new
     2.times do
    @sale.sales_entries.build
end
end

  
  def quote
    @sale = Sale.new
     2.times do
    @sale.sales_entries.build
end
end
  
    def draft
    @sale = Sale.new
    2.times do
    @sale.sales_entries.build
  end
  end

  # GET /sales/1/edit
  def edit

  end

  # POST /sales
  # POST /sales.json
  def create
    @sale = Sale.new(sale_params)

    respond_to do |format|
      if @sale.save
        format.html { redirect_to @sale, notice: 'Sale was successfully created.' }
        format.json { render :show, status: :created, location: @sale }
      else
        format.html { render :new }
        format.json { render json: @sale.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sales/1
  # PATCH/PUT /sales/1.json
  def update
    respond_to do |format|
      if @sale.update(sale_params)
        format.html { redirect_to @sale, notice: 'Sale was successfully updated.' }
        format.json { render :show, status: :ok, location: @sale }
      else
        format.html { render :edit }
        format.json { render json: @sale.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sales/1
  # DELETE /sales/1.json
  def destroy
    @sale.destroy
    respond_to do |format|
      format.html { redirect_to sales_url, notice: 'Sale was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sale
      @sale = Sale.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sale_params
      params.require(:sale).permit(:id, :number, :title, :address, :date, :due_date, :vat_total, :amount, :notes, :customer_id, :account_type, :sales_type, :contact_id, :user_id, sales_entries_attributes: [ :id, :sale_id, :product_id, :description, :quantity, :price, :vat_type, :account_id, :total_price, :gl_account_id ])
    end
end
