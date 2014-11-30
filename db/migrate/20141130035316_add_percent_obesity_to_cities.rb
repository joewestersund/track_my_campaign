class AddPercentObesityToCities < ActiveRecord::Migration
  def change
    add_column :cities, :percent_obesity, :decimal
  end
end
