class City < ActiveRecord::Base
  attr_accessible :name , :streets_attributes , :clients_attributes
  has_many :clients
  has_many :streets
  accepts_nested_attributes_for :clients
  accepts_nested_attributes_for :streets
end
