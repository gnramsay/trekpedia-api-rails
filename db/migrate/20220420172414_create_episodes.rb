class CreateEpisodes < ActiveRecord::Migration[6.1]
  def change
    create_table :episodes do |t|
      t.string :num_overall
      t.string :num_in_season
      t.string :title
      t.string :link
      t.string :director
      t.string :air_date
      t.belongs_to :season, null: false, foreign_key: true

      t.timestamps
    end
  end
end
