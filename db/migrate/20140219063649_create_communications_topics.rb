class CreateCommunicationsTopics < ActiveRecord::Migration
  def self.up
    create_table :communications_topics, :id => false do |t|
      t.integer :communication_id
      t.integer :topic_id
    end
  end

  def self.down
    drop_table :communications_topics
  end
end
