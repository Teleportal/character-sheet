class CreateModifiers < ActiveRecord::Migration[5.1]
  def change
    create_table :modifiers do |t|
      t.string :ability
      t.integer :offset

      t.timestamps
    end
  end
end
