class AdminZone < ApplicationRecord
  belongs_to :user
  belongs_to :zone
end
