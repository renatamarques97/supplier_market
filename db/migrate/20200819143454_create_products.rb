class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.float :height
      t.float :width
      t.float :length
      t.float :weight
      t.integer :quantity
      t.references :person, index: true, null: false, polymorphic: true

      t.timestamps
    end
  end
end
