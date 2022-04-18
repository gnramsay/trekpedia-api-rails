# frozen_string_literal: true

FactoryBot.define do
  factory :season do
    total { 5 }
    season_start { 'April 18, 2022' }
    season_end { 'September 28, 2022' }
    association :series
  end
end
