class CreateFeatures < ActiveRecord::Migration[5.1]
  def change
    create_table :features do |t|
      t.integer :classifiable_id
      t.string :classifiable_type
      t.integer :modifier_id
      t.string :name
      t.text :description
      t.integer :level_requirement

      t.timestamps
    end
    add_index :features, [:classifiable_type, :classifiable_id]
  end
end
