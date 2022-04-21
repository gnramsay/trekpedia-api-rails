# frozen_string_literal: true

# Remove all data from the database for our Tables, and reset the auto_increment
# values to 1.
# Then repopulate using the data from the Trekpedia JSON files.

require 'colorize'
def create_series(series_data)
  Series.create(
    **series_data
  )
end

def create_season(series, season_num, season_data)
  series.seasons.create(
    season_number: season_num,
    season_start: season_data['start'],
    season_end: season_data['end'],
    total: season_data['total']
  )
end

def create_episode(season, episode_data)
  new_episode = season.episodes.create(**episode_data)
  if new_episode.valid?
    puts '       ✔ episode '.green + episode_data['title'].light_green + ' created'.green
  else
    puts '       ❌ episode '.red + episode_data['title'].to_s.light_red + ' creation failed!'.red
  end
end

def reset_sequences
  # ActiveRecord::Base.connection.tables.each do |table|
  %w[episodes seasons series].each do |table|
    result = begin
      ActiveRecord::Base.connection.execute("SELECT id FROM #{table} ORDER BY id DESC LIMIT 1")
    rescue StandardError
      (puts "Warning: not procesing table #{table}. Id is missing?"

       next)
    end
    ai_val = result.any? ? result.first['id'].to_i + 1 : 1
    puts "  -> Resetting auto increment ID for #{table} to #{ai_val}".light_red
    ActiveRecord::Base.connection.execute("ALTER SEQUENCE #{table}_id_seq RESTART WITH #{ai_val}")
  end
end

puts "\nPopulating Trekpedia data base from local JSON files".light_blue

series_list = JSON.parse(File.read(Rails.root.join('trekdata', 'output', 'star_trek_series_info.json')))

puts "\nClearing out existing data from the database.".red
Series.destroy_all
reset_sequences

puts "\n"
series_list.each do |series|
  series_number = series[0]
  series = series[1]
  new_series = create_series(series)

  series_id = new_series['id']
  puts "Added series '#{new_series.name}' (id: #{series_id})".light_green
  series_name = new_series.name.downcase.parameterize(separator: '_')
  series_datafile = "star_trek_series_#{series_number}_#{series_name}_episodes.json"
  puts "  -> Reading Seasons data from '#{series_datafile}'".light_blue

  begin
    series_data = JSON.parse(File.read(Rails.root.join('trekdata', 'output', series_datafile)))
  rescue Errno::ENOENT
    puts '     ❌ File not found, ignoring.'.red
  else
    series_data['seasons'].each do |num, data|
      new_season = create_season(new_series, num, data)
      puts "     ✔ Added Season #{num}".light_green
      data['episodes'].each do |episode|
        _new_episode = create_episode(new_season, episode)
      end
    end
  end
end
