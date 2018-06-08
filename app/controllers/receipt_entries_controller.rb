class ReceiptEntriesController < ApplicationController
  before_action :set_receipt_entry, only: [:show, :edit, :update, :destroy]

  # GET /receipt_entries
  # GET /receipt_entries.json
  def index
    @receipt_entries = ReceiptEntry.all
  end

  # GET /receipt_entries/1
  # GET /receipt_entries/1.json
  def show
  end

  # GET /receipt_entries/new
  def new
    @receipt_entry = ReceiptEntry.new
  end

  # GET /receipt_entries/1/edit
  def edit
  end

  # POST /receipt_entries
  # POST /receipt_entries.json
  def create
    @receipt_entry = ReceiptEntry.new(receipt_entry_params)

    respond_to do |format|
      if @receipt_entry.save
        format.html { redirect_to @receipt_entry, notice: 'Receipt entry was successfully created.' }
        format.json { render :show, status: :created, location: @receipt_entry }
      else
        format.html { render :new }
        format.json { render json: @receipt_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /receipt_entries/1
  # PATCH/PUT /receipt_entries/1.json
  def update
    respond_to do |format|
      if @receipt_entry.update(receipt_entry_params)
        format.html { redirect_to @receipt_entry, notice: 'Receipt entry was successfully updated.' }
        format.json { render :show, status: :ok, location: @receipt_entry }
      else
        format.html { render :edit }
        format.json { render json: @receipt_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /receipt_entries/1
  # DELETE /receipt_entries/1.json
  def destroy
    @receipt_entry.destroy
    respond_to do |format|
      format.html { redirect_to receipt_entries_url, notice: 'Receipt entry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_receipt_entry
      @receipt_entry = ReceiptEntry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def receipt_entry_params
      params.require(:receipt_entry).permit(:transaction_id, transactions_attributes: [:id, :date, :description, :amount, :reference, :bank_id, :gl_account_id, :account_id, :purchase_invoice_id, :sales_invoice_id, :contact_id, :vat_amount, :vat, :transaction_type, :payment_entry_id, :_destroy])
    end
end
