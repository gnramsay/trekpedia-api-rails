# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

series_list = JSON.parse(File.read(Rails.root.join('trekdata', 'output', 'star_trek_series_info.json')))

if Series.count.zero?
  series_list.each do |series|
    series = series[1]
    Series.create(
      name: series['name'],
      url: series['url'],
      season_count: series['season_count'],
      episode_count: series['episode_count'],
      episodes_url: series['episodes_url'],
      dates: series['dates'],
      logo: series['logo']
    )
  end
end
