class CreatePurchases < ActiveRecord::Migration[6.0]
  def change
    create_table :purchases do |t|
      t.float :price,       null: false
      t.float :discount,    null: false
      t.float :final_price, null: false
      t.float :shipping,    null: false
      t.references :person, index: true, null: false, polymorphic: true

      t.timestamps
    end
  end
end
