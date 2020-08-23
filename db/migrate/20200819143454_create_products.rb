class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.point :dimensions
      t.float :weight
      t.integer :quantity
      t.references :person, index: true, null: false, foreign_key: true

      t.timestamps
    end
  end
end
