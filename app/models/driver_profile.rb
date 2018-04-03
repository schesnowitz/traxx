class DriverProfile < ApplicationRecord
  # has_many :drivers
  belongs_to :terminal
  before_create :random_id, :set_temp_password
  # after_update :put_data
  validates :driver_company_id, uniqueness: { case_sensitive: false }, on: :create
  validates :email, uniqueness: { case_sensitive: false }, on: :create
  validates_presence_of :first_name, :last_name, :email
  # validates_presence_of :password, on: :create

  def random_id
  # self.driver_company_id = (0...50).map { (65 + rand(26)).chr }.join
  self.driver_company_id = SecureRandom.hex
  end
  
  after_create :build_driver
  # after_update :put_data
  
  def build_driver
    Driver.create(driver_profile: self, password: ENV['TEMP_DRIVER_PASSWORD'], password_confirmation: ENV['TEMP_DRIVER_PASSWORD'], email: self.email) 
  end

  def set_temp_password
    self.password ||= ENV['TEMP_DRIVER_PASSWORD']
  end

DRIVER_ROLE = %w(
  driver
  fleet_user
  admin
)

TIME_ZONE = [
["Atlantic Time (Canada) UTC -4, uses DST", "Atlantic Time (Canada)"], 
["Eastern Time (US & Canada) UTC -5, uses DST", "Eastern Time (US & Canada)"],
['Indiana (East) UTC -5, no DST', 'Indiana (East)'],
['Central Time (US & Canada) UTC -6, uses DST', 'Central Time (US & Canada)'],
['Saskatchewan UTC -6, no DST', 'Saskatchewan'],
['Mountain Time (US & Canada) UTC -7, uses DST', 'Mountain Time (US & Canada)'],
['Arizona UTC -7, no DST', 'Arizona'],
['Pacific Time (US & Canada) UTC -8, uses DST', 'Pacific Time (US & Canada)'],
['Alaska UTC -9, uses DST', 'Alaska']
]

DRIVER_STATUS = %w(
  active
  pending
  deactivated
)

VIOLATION_ALERTS = %w(
  15_minutes
  30_minutes
  45_minutes
  1_hour
)

DUTY_STATUS = %w(
  off_duty
  on_duty
  sleeper
  driving
  waiting
)

CYCLE =%w(
  70_8
  60_7
  70_8_o
  60_7_o
  70_8_p
  60_7_p
  80_8
  80_8_o
  80_8_p
  tx_70_7
  ak_70_7
  ak_80_8
  ak_70_7_o
  ak_80_8_o
  ak_70_7_p
  ak_80_8_p
  70_7
  120_14
  canada_oil
  80_7
  120_14_north
  Other
)
end 




















