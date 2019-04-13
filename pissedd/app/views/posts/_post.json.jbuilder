json.extract! post, :id, :site, :description, :date, :city, :country, :gps_location, :image, :file_atachment, :open, :solved, :innapropiated_count, :in_dumpster, :is_hidden, :created_at, :updated_at
json.url post_url(post, format: :json)
