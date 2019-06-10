class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :zone
  has_one :admin_zone
  has_many :posts
  has_many :comments
  has_many :votes
  # has_many :request_posts, through: :innappropiate_requests
  has_many :innappropiate_requests
  has_one_attached :avatar
  acts_as_follower
  acts_as_liker
  acts_as_mentionable

  validates :name, format: {with: /\A[a-zA-Z]+\z/}
  validates :lastname, format: {with: /\A[a-zA-Z]+\z/}
  validates :bio, length: {in: 15..500}
  validates :city, format: {with: /\A[a-zA-Z]+\z/}
  validates :country, format: {with: /\A[a-zA-Z]+\z/}
  validates :name, :lastname, :city, :country, presence: true

 after_initialize do
   self.user_type ||= "User"
 end

 def to_blacklist
end
end
