class CreateStates < ActiveRecord::Migration[6.0]
  def change
    create_table :states do |t|
      t.string :name,     null: false
      t.string :acronym,  null: false
      
      t.timestamps
    end
  end
end
