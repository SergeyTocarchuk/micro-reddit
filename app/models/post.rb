class Post < ApplicationRecord
  validates :title, presence: true, uniqueness: true, length: {minimum: 3, maximum: 50}
  validates :body, presence: true, length: {maximum: 500}
end
