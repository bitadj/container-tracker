# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

customers = Customer.create([
	{
		customer_id:'101', name: 'Urban Outfitters'
	}, 
	{
		customer_id:'102', name: 'Nordstrom'
	},
	{
		customer_id:'103', name: 'Anthropologie'
	},
	{
		customer_id:'104', name: 'TJ Maxx'
	},
	{
		customer_id:'105', name: 'Marshalls'
	},

])