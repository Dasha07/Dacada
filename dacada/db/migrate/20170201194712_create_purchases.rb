class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.float :shipping_cost
      t.integer :shipping_time
      t.references :user, index: true, foreign_key: true
      t.references :item, index: true, foreign_key: true
      t.references :order, index: true, foreign_key: true
      t.integer :quantity

      t.timestamps null: false
    end
  end
end
