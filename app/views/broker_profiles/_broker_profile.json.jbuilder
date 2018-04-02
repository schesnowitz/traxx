json.extract! broker_profile, :id, :company_name, :street, :city, :state_provence, :postal_code, :telephone, :fax, :email, :website, :logo, :broker_mc_number, :carrier_mc_number, :us_dot_number, :contact_person0, :created_at, :updated_at
json.url broker_profile_url(broker_profile, format: :json)
