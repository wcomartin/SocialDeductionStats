class CreatePlayers < ActiveRecord::Migration[7.0]
  def change
    create_table :players do |t|
      t.string :name
      t.string :slug
      t.string :twitch_url
      t.string :twitch_handle
      t.string :youtube_url
      t.string :youtube_handle
      t.string :twitter_url
      t.string :twitter_handle
      t.string :profile_picture

      t.timestamps
    end
  end
end
