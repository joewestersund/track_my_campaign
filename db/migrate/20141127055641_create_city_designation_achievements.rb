class CreateCityDesignationAchievements < ActiveRecord::Migration
  def change
    create_table :city_designation_achievements do |t|
      t.integer :database_instance_id
      t.date :date
      t.integer :city_id
      t.integer :city_designation_id
      t.text :notes

      t.timestamps
    end
  end
end
