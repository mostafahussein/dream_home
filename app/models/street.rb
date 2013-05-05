class Street < ActiveRecord::Base
  attr_accessible :city_id, :name, :clients_attributes
  belongs_to :city
  has_many :clients
  accepts_nested_attributes_for :clients
end
