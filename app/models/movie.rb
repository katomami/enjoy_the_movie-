class Movie < ApplicationRecord
  belongs_to :genre
  has_many :reviews
  has_many :favorites

end
