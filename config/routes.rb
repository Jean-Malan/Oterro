Rails.application.routes.draw do
  get 'report/income_statement'

  get 'report/balance_sheet'

  get 'report/trial_balance'

  get 'report/general_ledger'

  resources :journals
  resources :journal_entries
  resources :products
    get 'purchases/draft'
   get 'purchases/invoice'
  resources :purchase_entries
  resources :purchases
  resources :contacts
  get 'sales/quote'
  get 'sales/draft'
   get 'sales/invoice'
  resources :sales_entries
  resources :sales
  resources :receipt_entries
  resources :payment_entries
  resources :bank_accounts
  resources :gl_accounts
  resources :transactions
  get 'index/home'
  root 'index#home'
 
end
