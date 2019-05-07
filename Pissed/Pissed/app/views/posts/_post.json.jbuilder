json.extract! post, :id, :title, :description, :up_vote_amount, :down_vote_amount, :date, :city, :country, :gps_location, :image, :file_atachment, :open, :solved, :innapropiated_count, :in_dumpster, :is_hidden, :user_id, :zone_id, :created_at, :updated_at
json.url post_url(post, format: :json)
