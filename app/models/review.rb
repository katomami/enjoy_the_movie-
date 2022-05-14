class Review < ApplicationRecord
  has_many :likes, dependent: :destroy
  belongs_to :user
  belongs_to :movie


end
