class CreateDeaths < ActiveRecord::Migration[7.0]
  def change
    create_table :deaths do |t|
      t.integer :player_id
      t.integer :killer_player_id
      t.integer :meeting_id
      t.boolean :is_stabbed
      t.boolean :is_ejected

      t.timestamps
    end
  end
end
