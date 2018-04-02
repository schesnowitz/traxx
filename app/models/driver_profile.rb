class DriverProfile < ApplicationRecord
  @app_setting = AppSetting.find(1)

  has_many :drivers
  belongs_to :terminal

  before_create :set_columns, :random_id

  validates :driver_company_id, uniqueness: { case_sensitive: false }, on: :create

  validates :email, uniqueness: { case_sensitive: false }, on: :create
  # validates :api_id, uniqueness: { case_sensitive: false }, on: :create
  validates_presence_of :first_name, :last_name, :role, :password

  after_create :build_driver

  def random_id
    self.driver_company_id = SecureRandom.hex
  end

  def set_columns
    self.password ||= @app_setting.driver_temp_password
    self.username ||= "#{self.first_name}_#{self.last_name}_#{SecureRandom.hex}"
  end

  def build_driver
    Driver.create(driver_profile: self, password: self.password, password_confirmation: self.password, email: self.email) 
  end

DRIVER_ROLE = %w(
  driver
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
end 





















