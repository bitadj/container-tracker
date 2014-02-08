class Customer
  include Mongoid::Document
  field :cust_num, type: String
  field :name, type: String

  has_many :orders
end
