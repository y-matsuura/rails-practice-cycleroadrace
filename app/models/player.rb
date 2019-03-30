class Player < ApplicationRecord
  belongs_to :team, optional: true
  belongs_to :start_list, optional: true
end
