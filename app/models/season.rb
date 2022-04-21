# frozen_string_literal: true

class Season < ApplicationRecord
  belongs_to :series
  has_many :episode, dependent: :destroy

  validates :total, presence: true
  validates :season_start, presence: true
  validates :season_end, presence: true
end
