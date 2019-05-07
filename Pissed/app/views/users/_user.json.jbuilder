json.extract! user, :id, :user_type, :name, :lastname, :email_address, :password, :picture, :bio, :gps_location, :city, :country, :in_blacklist, :suspended, :previously_suspension, :zone_id, :created_at, :updated_at
json.url user_url(user, format: :json)
