class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name,      null: false
      t.text :description, null: false, default: ""
      t.float :height
      t.float :width
      t.float :length
      t.float :weight
      t.float :price,      null: false
      t.integer :quantity, null: false, default: 0
      t.references :person, index: true, null: false, polymorphic: true

      t.timestamps
    end
  end
end
