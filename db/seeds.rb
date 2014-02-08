# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Customer.all.destroy
Order.all.destroy

customers = Customer.create([
	{
		cust_num: '101', name: 'Urban Outfitters'
	}, 
	{
		cust_num: '102', name: 'Nordstrom'
	},
	{
		cust_num: '103', name: 'Anthropologie'
	},
	{
		cust_num: '104', name: 'TJ Maxx'
	},
	{
		cust_num: '105', name: 'Marshalls'
	},

])

# orders = Order.create ([
# 	{
# 		order_num: '1001',
# 		po_num: '903300216',
# 		start_date: '01-04-2014',
# 		cancel_date: '01-04-2014',
# 		num_cartons: '25', 
# 	},
# ])

c = Customer.find_by(cust_num: "101")
c.orders.create({
		order_num: '1001',
		po_num: '903300216',
		start_date: '01-04-2014',
		cancel_date: '01-04-2014',
		num_cartons: '25', 
	})