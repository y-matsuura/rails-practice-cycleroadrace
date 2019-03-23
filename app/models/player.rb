class Player < ApplicationRecord
  belongs_to :team
  belongs_to :start_list
end
