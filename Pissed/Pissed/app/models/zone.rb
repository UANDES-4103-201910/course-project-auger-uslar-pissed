class Zone < ApplicationRecord
  has_many :users
  has_may :posts
  has_one :admin_zone
end
