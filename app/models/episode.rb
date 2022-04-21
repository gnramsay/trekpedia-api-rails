# frozen_string_literal: true

class Episode < ApplicationRecord
  belongs_to :season

  validates :title, :director, :num_overall, :num_in_season, :air_date, presence: true
  validates :link, presence: true, allow_blank: true
end
