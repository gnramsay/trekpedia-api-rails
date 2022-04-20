# frozen_string_literal: true

FactoryBot.define do
  factory :episode do
    num_overall { 'MyString' }
    num_in_season { 'MyString' }
    title { 'MyString' }
    link { 'MyString' }
    director { 'MyString' }
    air_date { 'MyString' }
    season { nil }
  end
end
