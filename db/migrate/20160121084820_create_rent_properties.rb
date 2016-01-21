class CreateRentProperties < ActiveRecord::Migration
  def change
    create_table :rent_properties do |t|
      t.date :building_year
      t.references :city, index: true
      t.references :street, index: true
      t.string :house_number
      t.integer :apartment_number
      t.references :user, index: true
      t.references :status, index: true

      t.timestamps
    end
  end
end
