class Movie < ApplicationRecord
  belongs_to :genre
  has_many :reviews, dependent: :destroy
  has_many :likes, dependent: :destroy
  validates :title,
  length: {minimum: 1, maximum: 30}
  validates :director_name,
  length: {minimum: 1, maximum: 30}
  validates :production_year,
  length: {minimum: 1, maximum: 10}
  validates :explanation,
  length: {minimum: 1, maximum: 105}
  def liked?(user)
    likes.where(user_id: user.id).exists?
  end
end
