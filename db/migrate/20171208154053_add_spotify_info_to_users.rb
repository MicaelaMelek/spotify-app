class AddSpotifyInfoToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :spotify_info, :text
  end
end
