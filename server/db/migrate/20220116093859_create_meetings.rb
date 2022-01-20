class CreateMeetings < ActiveRecord::Migration[7.0]
  def change
    create_table :meetings do |t|
      t.integer :game_id
      t.date :timestamp

      t.timestamps
    end
  end
end
