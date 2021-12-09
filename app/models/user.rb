class User < ApplicationRecord
  has_many :posts
  has_many :comments
  validates :username, presence: true, uniqueness: true, length: {minimum: 3, maximum: 20}
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: {minimum: 7, maximum: 15}
end
