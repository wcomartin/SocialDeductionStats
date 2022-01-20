class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.integer :session_id
      t.integer :sequence

      t.timestamps
    end
  end
end
