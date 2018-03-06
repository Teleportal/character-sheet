class AddNumberOfSkillsToKlass < ActiveRecord::Migration[5.1]
  def change
    add_column :klasses, :number_of_skills, :integer
  end
end
