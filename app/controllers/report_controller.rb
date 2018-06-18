class ReportController < ApplicationController
  def income_statement
    
  @gl_accounts = GlAccount.all
  @transactions = Transaction.all
  @sales = Sale.all
  @purchases = Purchase.all

  
  end

  def balance_sheet
     @gl_accounts = GlAccount.all
  @transactions = Transaction.all
  @sales = Sale.all
  @purchases = Purchase.all
  @bank_account = BankAccount.all
  end

  def trial_balance
  end

  def general_ledger
  end
end
