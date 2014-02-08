class Order
  include Mongoid::Document
  field :order_id, type: Integer
  field :po_num, type: String
  field :start_date, type: Time
  field :cancel_date, type: Time
  field :num_cartons, type: Integer
  embedded_in :customer_id
end
