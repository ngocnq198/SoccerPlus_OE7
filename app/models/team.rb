class Team < ApplicationRecord
  has_many :matches, dependent: :destroy
end
