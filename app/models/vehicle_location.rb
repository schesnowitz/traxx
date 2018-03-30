class VehicleLocation < ApplicationRecord
  validates :latitude, uniqueness: {scope: :longitude}
end