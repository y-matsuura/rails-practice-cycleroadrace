class Team < ApplicationRecord
  belongs_to :category, optional: true
  belongs_to :logo, optional: true
  has_many :players
end
