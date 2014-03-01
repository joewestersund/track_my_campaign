class CreatePoliciesPolicyAdoptions < ActiveRecord::Migration
  def change
    create_table :policies_policy_adoptions, :id => false do |t|
      t.integer :policy_id
      t.integer :policy_adoption_id
    end
  end
end
