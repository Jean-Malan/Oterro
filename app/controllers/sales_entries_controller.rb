class SalesEntriesController < ApplicationController
  before_action :set_sales_entry, only: [:show, :edit, :update, :destroy]

  # GET /sales_entries
  # GET /sales_entries.json
  def index
    @sales_entries = SalesEntry.all
  end

  # GET /sales_entries/1
  # GET /sales_entries/1.json
  def show
  end

  # GET /sales_entries/new
  def new
    @sales_entry = SalesEntry.new
  end

  # GET /sales_entries/1/edit
  def edit
  end

  # POST /sales_entries
  # POST /sales_entries.json
  def create
    @sales_entry = SalesEntry.new(sales_entry_params)

    respond_to do |format|
      if @sales_entry.save
        format.html { redirect_to @sales_entry, notice: 'Sales entry was successfully created.' }
        format.json { render :show, status: :created, location: @sales_entry }
      else
        format.html { render :new }
        format.json { render json: @sales_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sales_entries/1
  # PATCH/PUT /sales_entries/1.json
  def update
    respond_to do |format|
      if @sales_entry.update(sales_entry_params)
        format.html { redirect_to @sales_entry, notice: 'Sales entry was successfully updated.' }
        format.json { render :show, status: :ok, location: @sales_entry }
      else
        format.html { render :edit }
        format.json { render json: @sales_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sales_entries/1
  # DELETE /sales_entries/1.json
  def destroy
    @sales_entry.destroy
    respond_to do |format|
      format.html { redirect_to sales_entries_url, notice: 'Sales entry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sales_entry
      @sales_entry = SalesEntry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sales_entry_params
      params.require(:sales_entry).permit(:product_id, :description, :quantity, :price, :vat_type, :account_id, :total_price,:vat_amount, :gl_account_id, :invoice_number)
    end
end
