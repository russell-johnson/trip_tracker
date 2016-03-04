class Location < ActiveRecord::Base
  belongs_to :trip 
  has_one :address, dependent: :destroy
end
