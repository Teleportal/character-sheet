class AddTextBoxesToCharacterPages < ActiveRecord::Migration[5.1]
  def change
    add_column :character_pages, :backstory, :text
    add_column :character_pages, :inventory, :text
    add_column :character_pages, :notes, :text
  end
end
