require 'test_helper'

class ReportControllerTest < ActionController::TestCase
  test "should get income_statement" do
    get :income_statement
    assert_response :success
  end

  test "should get balance_sheet" do
    get :balance_sheet
    assert_response :success
  end

  test "should get trial_balance" do
    get :trial_balance
    assert_response :success
  end

  test "should get general_ledger" do
    get :general_ledger
    assert_response :success
  end

end
