class CreateBackgrounds < ActiveRecord::Migration[5.1]
  def change
    create_table :backgrounds do |t|
      t.string :name
      t.text :features

      t.timestamps
    end
  end
end
