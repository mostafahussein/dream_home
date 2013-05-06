class Client < ActiveRecord::Base
  attr_accessible :city_id, :street_id, :property_id, :room_id, :rent_id,:email, :name
  belongs_to :city
  belongs_to :street
  belongs_to :property
  belongs_to :room
  belongs_to :rent
end
