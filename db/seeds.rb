require 'csv'

csv_merchants = File.read(Rails.root.join('db/merchants.csv'))
merchant = CSV.parse(csv_merchants, headers: true, encoding: 'ISO-8859-1')

merchant.each do |row|
  record = Merchant.new
  record.name = row['name']
  record.email = row['email']
  record.cif = row['cif']
  record.save
end

csv_shoppers = File.read(Rails.root.join('db/shoppers.csv'))
shopper = CSV.parse(csv_shoppers, headers: true, encoding: 'ISO-8859-1')

merchant.each do |row|
  record = Shopper.new
  record.name = row['name']
  record.email = row['email']
  record.cif = row['cif']
  record.save
end

csv_orders = File.read(Rails.root.join('db/orders.csv'))
order = CSV.parse(csv_orders, headers: true, encoding: 'ISO-8859-1')

merchant.each do |row|
  record = Order.new
  record.merchant_id = row['merchant_id']
  record.shopper_id = row['shopper_id']
  record.amount = row['amoun']
  record.created_at = row['created_at']
  record.completed_at = row['completed_at']
  record.save
end
