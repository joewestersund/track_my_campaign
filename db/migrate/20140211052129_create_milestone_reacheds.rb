class CreateMilestoneReacheds < ActiveRecord::Migration
  def change
    create_table :milestone_reacheds do |t|
      t.integer :database_instance_id
      t.integer :milestone_id
      t.integer :city_id
      t.integer :status_type_id
      t.date :completion_date
      t.text :notes
      t.integer :user_id

      t.timestamps
    end
  end
end
