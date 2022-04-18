class Season < ApplicationRecord
  belongs_to :series

  validates :total, presence: true
  validates :season_start, presence: true
  validates :season_end, presence: true
end
