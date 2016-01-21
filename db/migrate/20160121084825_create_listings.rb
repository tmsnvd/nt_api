class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :title
      t.references :rent_property, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
