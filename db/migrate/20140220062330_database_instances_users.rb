class DatabaseInstancesUsers < ActiveRecord::Migration
  def self.up
    create_table :database_instances_users, :id => false do |t|
      t.integer :database_instance_id
      t.integer :user_id
    end
  end

  def self.down
    drop_table :database_instances_users
  end
end
