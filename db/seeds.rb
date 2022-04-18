# frozen_string_literal: true

puts "\nPopulating Trekpedia data base from local JSON files\n"

series_list = JSON.parse(File.read(Rails.root.join('trekdata', 'output', 'star_trek_series_info.json')))

if Series.count.zero?
  puts "\n"
  series_list.each do |series|
    series = series[1]
    new_series = Series.create(
      name: series['name'],
      url: series['url'],
      season_count: series['season_count'],
      episode_count: series['episode_count'],
      episodes_url: series['episodes_url'],
      dates: series['dates'],
      logo: series['logo']
    )
    series_id = new_series['id']
    puts "added series '#{new_series.name}' (id: #{series_id})"
  end
else
  puts "\nSeries data already exists, cowardly refusing to overwrite."
end
