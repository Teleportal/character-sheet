class CreateClassSkills < ActiveRecord::Migration[5.1]
  def change
    create_table :class_skills do |t|
      t.integer :klass_id
      t.integer :skill_id

      t.timestamps
    end
  end
end
