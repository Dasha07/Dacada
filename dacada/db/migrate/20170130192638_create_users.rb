class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :card_number
      t.string :street
      t.string :city
      t.string :state
      t.string :password_digest
      t.boolean :notification

      t.timestamps null: false
    end
  end
end
