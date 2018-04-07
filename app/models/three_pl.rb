class ThreePl < ApplicationRecord
  has_many :shipments
  has_many :regional_offices 
  accepts_nested_attributes_for :regional_offices



end
