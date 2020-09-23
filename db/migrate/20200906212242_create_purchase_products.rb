class CreatePurchaseProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :purchase_products do |t|
      t.integer :order_quantity, null: false
      t.references :purchase,    null: false, foreign_key: true
      t.references :product,     null: false, foreign_key: true

      t.timestamps
    end
  end
end
