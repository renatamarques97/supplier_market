class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.string :street,           null: false
      t.string :number,           null: false
      t.string :complement
      t.string :reference_point
      t.string :zip_code,         null: false
      t.references :city,         null: false, foreign_key: true
      t.references :person, index: true, null: false, polymorphic: true

      t.timestamps
    end
  end
end
