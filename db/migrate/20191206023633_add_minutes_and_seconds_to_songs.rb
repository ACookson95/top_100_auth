class AddMinutesAndSecondsToSongs < ActiveRecord::Migration[6.0]
  def change
    add_column :songs, :minutes, :integer
    add_column :songs, :seconds, :integer
  end
end
