class Vehicle < ApplicationRecord
  validates :vin, uniqueness: { case_sensitive: false }

  FUEL_TYPE = %w(
    diesel 
    gasoline 
    propane 
    lng 
    cng 
    ethanol 
    methanol 
    e85 
    m85 
    a55 
    biodiesel 
    other
  )

end
