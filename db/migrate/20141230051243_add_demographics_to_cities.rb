class AddDemographicsToCities < ActiveRecord::Migration
  def change
    add_column :cities, :minorities_more_than_fifteen_percent, :boolean
    add_column :cities, :percent_white_alone, :decimal, precision: 5, scale: 2
    add_column :cities, :percent_not_white_alone, :decimal, precision: 5, scale: 2
    add_column :cities, :percent_african_american_alone, :decimal, precision: 5, scale: 2
    add_column :cities, :percent_native_american_alone, :decimal, precision: 5, scale: 2
    add_column :cities, :percent_asian_alone, :decimal, precision: 5, scale: 2
    add_column :cities, :percent_pacific_islander_alone, :decimal, precision: 5, scale: 2
    add_column :cities, :percent_other_race_alone, :decimal, precision: 5, scale: 2
    add_column :cities, :percent_two_or_more_races, :decimal, precision: 5, scale: 2
  end
end
