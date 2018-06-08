# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

GlAccount.create(code: 2006, name: "Administrative Fees", account_type: 6)
GlAccount.create(code: 2007, name: "Consulting Fees", account_type: 6)
GlAccount.create(code: 2008, name: "Entertainment" , account_type:6 )
GlAccount.create(code: 2009, name: "Electricity", account_type:6 )
GlAccount.create(code: 2010, name: "Finanace Charges", account_type:6 )
GlAccount.create(code: 2011, name: "Gifts" , account_type:6 )
GlAccount.create(code: 2012, name: "Interest Paid", account_type:6 )
GlAccount.create(code: 2013, name: "Legal Fees", account_type: 6)
GlAccount.create(code: 2014, name: "Motor Vehicle Expenses" , account_type: 6)
GlAccount.create(code: 2015, name: "Printing & Stationary", account_type: 6)
GlAccount.create(code: 5000, name: "Motor Vehicle" , account_type: 1)
GlAccount.create(code: 7001, name: "Loan A/C - J Malan", account_type: 3)
GlAccount.create(code: 6001, name: "Trade Payables", account_type: 2)
GlAccount.create(code: 4001, name: "Trade Receivables", account_type: 0)
GlAccount.create(code: 6002, name: "Vat Control Account", account_type: 2)
GlAccount.create(code: 5001, name: "Motor Vehicle - Accumulated Depreciation", account_type: 1)
