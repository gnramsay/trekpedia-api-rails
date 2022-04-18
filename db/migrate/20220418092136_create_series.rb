# frozen_string_literal: true

# Define the migration for the Series Model
class CreateSeries < ActiveRecord::Migration[6.1]
  def change
    create_table :series do |t|
      t.string :name
      t.string :url
      t.string :season_count
      t.string :episode_count
      t.string :episodes_url
      t.string :dates
      t.string :logo

      t.timestamps
    end
  end
end
