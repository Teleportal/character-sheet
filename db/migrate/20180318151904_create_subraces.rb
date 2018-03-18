class CreateSubraces < ActiveRecord::Migration[5.1]
  def change
    create_table :subraces do |t|
      t.string :name
      t.integer :race_id

      t.timestamps
    end
  end
end
