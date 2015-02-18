class AddSingerRefToAlbums < ActiveRecord::Migration
  def change
    add_reference :albums, :singer, index: true
  end
end
