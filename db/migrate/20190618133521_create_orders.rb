class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :user, foreign_key: true
      t.references :billing_address, foreign_key: true
      t.references :shipping_address, foreign_key: true

      t.timestamps
    end

    add_foreign_key :orders, :addresses, column: :billing_address_id, primary_key: :id
    add_foreign_key :orders, :addresses, column: :shipping_address_id, primary_key: :id
  end
end
