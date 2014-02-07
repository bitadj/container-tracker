class Customer
  include Mongoid::Document
  field :customer_id, type: Integer
  field :name, type: String
end
