class IndexController < ApplicationController
  def home
      @sale = Sale.all
      @transactions = Transaction.all
      @sale_total = Sale.where('date > ?', 30.days.ago) 
      
 end
end
