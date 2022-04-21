# frozen_string_literal: true

class Episode < ApplicationRecord
  belongs_to :season
  validates :title, :director, :link, :num_overall, :num_in_season, :air_date, presence: true
end
