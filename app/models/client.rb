class Client < ActiveRecord::Base
  attr_accessible :city_id, :street_id, :email, :name
  belongs_to :city
  belongs_to :street
end
