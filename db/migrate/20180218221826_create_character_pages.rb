class CreateCharacterPages < ActiveRecord::Migration[5.1]
  def change
    create_table :character_pages do |t|
      t.integer :user_id
      t.string :name
      t.integer :background_id
      t.integer :strength
      t.integer :dexterity
      t.integer :constitution
      t.integer :intelligence
      t.integer :wisdom
      t.integer :charisma
      t.integer :level
      t.integer :klass_id
      t.integer :hit_points
      t.integer :armor_class
      t.string :alignment
      t.text :personality
      t.text :ideals
      t.text :bonds
      t.text :flaws
      t.integer :race_id
      t.integer :money

      t.timestamps
    end
  end
end
