class AddPolicyChangeInProgressToCities < ActiveRecord::Migration
  def change
    add_column :cities, :policy_change_in_progress, :boolean, :default => false
  end
end
