class Review < ApplicationRecord
  belongs_to :user
  belongs_to :movie
  validates :comment,
  length: {minimum: 1, maximum: 105}
  validates :comment_title,
  length: {minimum: 1, maximum: 15}
  validates :spoiler,
  length: {minimum: 1, maximum: 105}
  validates :purpose,
  length: {minimum: 1, maximum: 15}
  validates :star, {presence: true}
end
