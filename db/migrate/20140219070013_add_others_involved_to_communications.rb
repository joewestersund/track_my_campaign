class AddOthersInvolvedToCommunications < ActiveRecord::Migration
  def change
    add_column :communications, :others_involved, :string
  end
end
