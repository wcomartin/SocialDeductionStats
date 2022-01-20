class CreateGamePlayers < ActiveRecord::Migration[7.0]
  def change
    create_table :game_players do |t|
      t.integer :game_id
      t.integer :player_id
      t.integer :role_id
      t.integer :secondary_role_id
      t.boolean :is_winner
      t.integer :winning_role_id

      t.timestamps
    end
  end
end
