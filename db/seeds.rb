# frozen_string_literal: true

# Remove all data from the database for our Tables, and reset the auto_increment
# values to 1.
# Then repopulate using the data from the Trekpedia JSON files.

def create_series(series)
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

def create_season(series, season_num, season_data)
  series.season.create(
    season_number: season_num,
    season_start: season_data['start'],
    season_end: season_data['end'],
    total: season_data['total']
  )
end

puts "\nPopulating Trekpedia data base from local JSON files\n"

series_list = JSON.parse(File.read(Rails.root.join('trekdata', 'output', 'star_trek_series_info.json')))

puts "\nClearing out existing data from the database."
Season.destroy_all
Series.destroy_all

# ActiveRecord::Base.connection.tables.each do |table|
%w[seasons series].each do |table|
  result = begin
    ActiveRecord::Base.connection.execute("SELECT id FROM #{table} ORDER BY id DESC LIMIT 1")
  rescue StandardError
    (puts "Warning: not procesing table #{table}. Id is missing?"

     next)
  end
  ai_val = result.any? ? result.first['id'].to_i + 1 : 1
  puts "Resetting auto increment ID for #{table} to #{ai_val}"
  ActiveRecord::Base.connection.execute("ALTER SEQUENCE #{table}_id_seq RESTART WITH #{ai_val}")
end

puts "\n"
series_list.each do |series|
  series_number = series[0]
  series = series[1]
  new_series = create_series(series)

  series_id = new_series['id']
  puts "Added series '#{new_series.name}' (id: #{series_id})"
  series_name = new_series.name.downcase.parameterize(separator: '_')
  series_datafile = "star_trek_series_#{series_number}_#{series_name}_episodes.json"
  puts "  -> Reading Seasons data from '#{series_datafile}'"

  begin
    series_data = JSON.parse(File.read(Rails.root.join('trekdata', 'output', series_datafile)))
  rescue Errno::ENOENT
    puts '     ❌ File not found, ignoring.'
  else
    series_data['seasons'].each do |num, data|
      _new_season = create_season(new_series, num, data)
      puts "     ✔ Added Season #{num}"
    end
  end
end
