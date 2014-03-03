class RenameColumnContactsHealChampion < ActiveRecord::Migration
  def change
    rename_column :contacts, :HEAL_champion, :heal_champion
    rename_column :contacts, :HEAL_champion_notes, :heal_champion_notes
  end
end
