class Picture < ApplicationRecord
  has_one :movie, dependent: :destroy
end
