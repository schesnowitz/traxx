class RegionalOffice < ApplicationRecord
  belongs_to :three_pl
  validates :office_description, presence: true


  def regional_office_street
    "#{street}"
  end 
end
