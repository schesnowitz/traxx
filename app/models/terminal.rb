class Terminal < ApplicationRecord
  belongs_to :app_setting
  has_many :driver_profiles

  def the_terminal_name
    "#{name}"
  end 

  def the_terminal_id
    "#{id}"
  end
  def the_terminal_street
    "#{street}"
  end 
  def the_terminal_city
    "#{city}"
  end 

end
