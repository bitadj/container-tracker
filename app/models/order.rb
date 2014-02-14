class Order
  include Mongoid::Document
  field :order_num, type: Integer
  field :po_num, type: String
  field :start_date, type: Date
  field :cancel_date, type: Date
  field :num_cartons, type: Integer
  
  belongs_to :customer
  belongs_to :container
end
