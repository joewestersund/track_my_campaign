class CreatePoliciesResolutions < ActiveRecord::Migration
  def change
    create_table :policies_resolutions, :id => false do |t|
      t.integer :policy_id
      t.integer :resolution_id
    end
  end
end
