class CreateSkillTests < ActiveRecord::Migration[5.1]
  def change
    create_table :skill_tests do |t|
      t.integer :character_page_id
      t.integer :skill_id
      t.boolean :proficient
      t.integer :bonus

      t.timestamps
    end
  end
end
