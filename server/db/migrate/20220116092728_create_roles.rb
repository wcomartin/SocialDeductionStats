class CreateRoles < ActiveRecord::Migration[7.0]
  def change
    create_table :roles do |t|
      t.integer :mod_id
      t.string :name
      t.string :team_name
      t.string :team_type

      t.timestamps
    end
  end
end
