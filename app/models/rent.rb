class Rent < ActiveRecord::Base
  attr_accessible :property_id, :rent_amount, :clients_attributes
  has_many :clients
  belongs_to :property
  accepts_nested_attributes_for :clients
end
