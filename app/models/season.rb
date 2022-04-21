# frozen_string_literal: true

class Season < ApplicationRecord
  belongs_to :series
  has_many :episodes, dependent: :destroy

  validates :total, presence: true
  validates :season_start, presence: true
  validates :season_end, presence: true
end
