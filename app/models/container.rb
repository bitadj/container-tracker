class Container
  include Mongoid::Document
  field :container_num, type: Integer
  field :num_cartons, type: Integer
  field :est_arrival, type: Date
  field :arrival, type: DateTime

  has_many :orders
end
