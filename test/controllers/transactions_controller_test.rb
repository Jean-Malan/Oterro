require 'test_helper'

class TransactionsControllerTest < ActionController::TestCase
  setup do
    @transaction = transactions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:transactions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create transaction" do
    assert_difference('Transaction.count') do
      post :create, transaction: { account_id: @transaction.account_id, amount: @transaction.amount, bank_id: @transaction.bank_id, contact_id: @transaction.contact_id, date: @transaction.date, description: @transaction.description, purchase_invoice_id: @transaction.purchase_invoice_id, reference: @transaction.reference, sales_invoice_id: @transaction.sales_invoice_id, vat: @transaction.vat, vat_amount: @transaction.vat_amount }
    end

    assert_redirected_to transaction_path(assigns(:transaction))
  end

  test "should show transaction" do
    get :show, id: @transaction
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @transaction
    assert_response :success
  end

  test "should update transaction" do
    patch :update, id: @transaction, transaction: { account_id: @transaction.account_id, amount: @transaction.amount, bank_id: @transaction.bank_id, contact_id: @transaction.contact_id, date: @transaction.date, description: @transaction.description, purchase_invoice_id: @transaction.purchase_invoice_id, reference: @transaction.reference, sales_invoice_id: @transaction.sales_invoice_id, vat: @transaction.vat, vat_amount: @transaction.vat_amount }
    assert_redirected_to transaction_path(assigns(:transaction))
  end

  test "should destroy transaction" do
    assert_difference('Transaction.count', -1) do
      delete :destroy, id: @transaction
    end

    assert_redirected_to transactions_path
  end
end
