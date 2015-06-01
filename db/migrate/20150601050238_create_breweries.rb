class CreateBreweries < ActiveRecord::Migration
  def change
    create_table :breweries do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :state_abbr
      t.string :country
      t.string :location_type
      t.string :website

      t.timestamps null: false
    end
  end
end
