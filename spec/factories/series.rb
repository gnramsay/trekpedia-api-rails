# frozen_string_literal: true

FactoryBot.define do
  factory :series do
    sequence(:name) { |n| "Trek Series #{n}" }
    sequence(:url) { |n| "https://en.wikipedia.org/trek_series_#{n}_link" }
    season_count { '3' }
    episode_count { '79' }
    sequence(:episodes_url) { |n| "https://en.wikipedia.org/trek_series_#{n}_episodes_link" }
    dates { 'September 8, 1966 - June 3, 1969' }
    sequence(:logo) { |n| "https://upload.wikimedia.org/wikipedia/commons/thumb/logo#{n}.png" }
  end
end
