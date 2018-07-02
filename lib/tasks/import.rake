require 'csv'

namespace :import do 
   
   desc "Import transactions from csv"
   task :transactions, :environment do
       filename = File.join Rails.root, "transactions.csv"
       CSV.foreach(filename) do |row|
          date, description, amount =  row
          Transaction.create(date: date, description: description, amount: amount)
       end
   end
end