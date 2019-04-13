class Post < ApplicationRecord
  validates :description, length: {in 15..400}
  validates :city, format: {with: /\A[a-zA-Z]+\z/}
  validates :country, format: {with: /\A[a-zA-Z]+\z/}
  validates: :site, :description, :date, :city, :country, :gps_location, :open, :solved, :innapropiated_count, :in_dumpster, :is_hidden, presence: true
end
