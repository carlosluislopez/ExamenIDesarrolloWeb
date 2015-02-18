class CreateSingers < ActiveRecord::Migration
  def change
    create_table :singers do |t|
      t.string :name
      t.string :gender
      t.string :twitter
      t.string :singer_type

      t.timestamps
    end
  end
end
