class Post < ApplicationRecord
  belongs_to :user
  has_many :reviews
  has_many_attached :photos

  CATEGORIES = ["gardening", "cooking", "DIY", "cleaning"]
  validates :category, inclusion: { in: CATEGORIES }
  validates :title, presence: true, length: { minimum: 20, maximum: 70 }
  validates :description, presence: true, length: { minimum: 150, maximum: 400 }
  validates :asker, presence: true
end
