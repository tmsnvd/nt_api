class CreateAuctions < ActiveRecord::Migration
  def change
    create_table :auctions do |t|
      t.decimal :start_price
      t.date :start_date
      t.decimal :buynow_price
      t.decimal :minimal_price
      t.references :listing, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
