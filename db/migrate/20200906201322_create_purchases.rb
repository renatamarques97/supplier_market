class CreatePurchases < ActiveRecord::Migration[6.0]
  def change
    create_table :purchases do |t|
      t.float :price
      t.float :discount
      t.float :final_price
      t.float :shipping
      t.references :person, index: true, null: false, polymorphic: true

      t.timestamps
    end
  end
end
