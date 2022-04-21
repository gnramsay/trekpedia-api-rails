# frozen_string_literal: true

FactoryBot.define do
  factory :episode do
    sequence(:num_overall, &:to_s)
    sequence(:num_in_season, &:to_s)
    sequence(:title) { |n| "Episode #{n}" }
    sequence(:link) { |n| "https://en.wikipedia.org/wiki/Episode_#{n}" }
    director { 'MyString' }
    air_date { 'April 1, 2022' }
    association :season
  end
end
