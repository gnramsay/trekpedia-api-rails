# frozen_string_literal: true

# Update the Seasons model to include season_number
class AddSeasonNumberToSeasons < ActiveRecord::Migration[6.1]
  def change
    add_column :seasons, :season_number, :string
  end
end
