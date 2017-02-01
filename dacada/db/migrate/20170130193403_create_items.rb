class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :description
      t.float :discount
      t.float :price
      t.datetime :deal_date
      t.string :manufacturer
      t.integer :stock
      t.references :category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
