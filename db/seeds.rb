# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Customer.all.destroy
Order.all.destroy
Container.all.destroy

customers = Customer.create([
	{
		cust_num: 101, name: 'Urban Outfitters'
	}, 
	{
		cust_num: 102, name: 'Nordstrom'
	},
	{
		cust_num: 103, name: 'Anthropologie'
	},
	{
		cust_num: 104, name: 'TJ Maxx'
	},
	{
		cust_num: 105, name: 'Marshalls'
	}

])

containers = Container.create ([
	{
		container_num: 1001,
		num_cartons: 353,
		est_arrival: '30-03-2014'
	},
		{
		container_num: 1002,
		num_cartons: 213,
		est_arrival: '12-03-2014'
	},
		{
		container_num: 1003,
		num_cartons: 219,
		est_arrival: '27-02-2014'
	},
		{
		container_num: 1004,
		num_cartons: 610,
		est_arrival: '15-02-2014'
	},
		{
		container_num: 1005,
		num_cartons: 404,
		est_arrival: '01-02-2014'
	},
		{
		container_num: 1006,
		num_cartons: 118,
		est_arrival: '28-01-2014'
	},
		{
		container_num: 1007,
		num_cartons: 249,
		est_arrival: '15-01-2014'
	},
		{
		container_num: 1008,
		num_cartons: 222,
		est_arrival: '06-01-2014'
	}
])


orders = Order.create ([
	{
		order_num: 1001,
		po_num: '903300216',
		start_date: '01-04-2014',
		cancel_date: '01-04-2014',
		num_cartons: 25,
		customer: Customer.find_by(cust_num: 101),
		container: Container.find_by(container_num: 1001)
	},
	{
		order_num: 1002,
		po_num: '903300432',
		start_date: '01-04-2014',
		cancel_date: '01-04-2014',
		num_cartons: 40,
		customer: Customer.find_by(cust_num: 103),
		container: Container.find_by(container_num: 1001)
	},
	{
		order_num: 1003,
		po_num: '4011035',
		start_date: '15-04-2014',
		cancel_date: '30-04-2014',
		num_cartons: 26,
		customer: Customer.find_by(cust_num: 102),
		container: Container.find_by(container_num: 1002)
	},
	{
		order_num: 1004,
		po_num: '1010230-10',
		start_date: '01-05-2014',
		cancel_date: '15-05-2014',
		num_cartons: 100,
		customer: Customer.find_by(cust_num: 104),
		container: Container.find_by(container_num: 1002)
	},
	{
		order_num: 1005,
		po_num: '1010230-20',
		start_date: '01-05-2014',
		cancel_date: '15-05-2014',
		num_cartons: 100,
		customer: Customer.find_by(cust_num: 104),
		container: Container.find_by(container_num: 1003)
	},
	{
		order_num: 1006,
		po_num: '1010230-30',
		start_date: '01-05-2014',
		cancel_date: '15-05-2014',
		num_cartons: 100,
		customer: Customer.find_by(cust_num: 105),
		container: Container.find_by(container_num: 1003)
	},
	{
		order_num: 1007,
		po_num: '1010230-40',
		start_date: '01-05-2014',
		cancel_date: '15-05-2014',
		num_cartons: 100,
		customer: Customer.find_by(cust_num: 105),
		container: Container.find_by(container_num: 1004)
	}
])





