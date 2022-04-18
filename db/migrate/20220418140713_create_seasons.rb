class CreateSeasons < ActiveRecord::Migration[6.1]
  def change
    create_table :seasons do |t|
      t.string :total
      t.string :season_start
      t.string :season_end
      t.references :series, null: false, foreign_key: true

      t.timestamps
    end
  end
end
