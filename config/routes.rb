Rails.application.routes.draw do

  get 'bank_accounts/unallocated'
  get 'purchases/paid'
  get 'purchases/draft_index'
  get 'purchases/unpaid'
  get 'purchases/partially_paid'
  get 'report/income_statement'
  get 'report/balance_sheet'
  get 'report/trial_balance'
  get 'report/general_ledger'
  get 'payment_entries/invoice_entry'
  get 'receipt_entries/invoice_entry'
   get 'sales/paid'
  get 'sales/draft_index'
  get 'sales/unpaid'
  get 'sales/partially_paid'
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
  
    resources :transactions do 
    collection { post :import }
  end
  resources :bank_accounts do 
    collection { post :import }
  end
  
   resources :transactions do
    collection do
      delete 'destroy_multiple'
    end
  end
 
end
