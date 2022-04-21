# frozen_string_literal: true

FactoryBot.define do
  factory :episode do
    sequence(:num_overall) { |n| n.to_s }
    sequence(:num_in_season) { |n| n.to_s }
    sequence(:title) { |n| "Episode #{n}" }
    link { 'https://en.wikipedia.org/wiki/Episode_#{n}' }
    director { 'MyString' }
    air_date { 'April 1, 2022' }
    association :season
  end
end
