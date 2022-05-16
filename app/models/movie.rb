class Movie < ApplicationRecord
  belongs_to :genre
  has_many :reviews, dependent: :destroy
  has_many :likes, dependent: :destroy
  def liked?(user)
    likes.where(user_id: user.id).exists?
  end
end
