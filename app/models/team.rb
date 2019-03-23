class Team < ApplicationRecord
  belongs_to :category
  belongs_to :logo
  has_many :players
end
