# frozen_string_literal: true

class Series < ApplicationRecord
  has_many :season

  validates :name, :url, :episodes_url, :season_count, :episode_count, :dates, presence: true

  # logo can be blank
  validates :logo, presence: true, allow_blank: true
end
