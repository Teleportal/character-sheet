class CreateKlasses < ActiveRecord::Migration[5.1]
  def change
    create_table :klasses do |t|
      t.string :name
      t.integer :hit_die
      t.integer :save_1
      t.integer :save_2

      t.timestamps
    end
  end
end
