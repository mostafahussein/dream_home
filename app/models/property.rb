class Property < ActiveRecord::Base
  attr_accessible :property_type, :rooms_attributes, :clients_attributes, :rents_attributes
  has_many :clients
  has_many :rooms
  has_many :rents
  accepts_nested_attributes_for :clients
  accepts_nested_attributes_for :rooms
  accepts_nested_attributes_for :rents
end
