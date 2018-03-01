class CreateBackgroundSkills < ActiveRecord::Migration[5.1]
  def change
    create_table :background_skills do |t|
      t.integer :background_id
      t.integer :skill_id

      t.timestamps
    end
  end
end
