class RemoveLengthFromSongs < ActiveRecord::Migration[6.0]
  def change

    remove_column :songs, :length, :time
  end
end
