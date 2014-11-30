class AddPercentObesityToCities < ActiveRecord::Migration
  def change
    add_column :cities, :percent_obesity, :decimal, precision: 5, scale: 2
  end
end
