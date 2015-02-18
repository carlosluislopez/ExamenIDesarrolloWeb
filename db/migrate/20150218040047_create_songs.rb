class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :title
      t.decimal :duration
      t.string :music_and_lyrics_by

      t.timestamps
    end
  end
end
