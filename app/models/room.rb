class Room < ActiveRecord::Base
  attr_accessible :number_of_rooms, :property_id, :clients_attributes
  belongs_to :property
  has_many :clients
  accepts_nested_attributes_for :clients
end
