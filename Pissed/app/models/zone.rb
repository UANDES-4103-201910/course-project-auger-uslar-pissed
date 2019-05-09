class Zone < ApplicationRecord
  has_many :users
  has_many :posts
  has_one :admin_zone
end
