class Order
  include Mongoid::Document
  field :order_num, type: String
  field :po_num, type: String
  field :start_date, type: Time
  field :cancel_date, type: Time
  field :num_cartons, type: Integer
  
  belongs_to :customer
end
