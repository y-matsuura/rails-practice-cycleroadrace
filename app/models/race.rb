class Race < ApplicationRecord
  has_one :start_list
  has_many :players, :through => :start_list
end
