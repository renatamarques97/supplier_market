# frozen_string_literal: true

class DeviseCreatePeople < ActiveRecord::Migration[6.0]
  def change
    create_table :people do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :name,               null: false, default: ""
      t.string :telephone,          null: false, default: ""
      t.string :cnpj,               null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      t.timestamps null: false
    end

    add_index :people, :email,                unique: true
    add_index :people, :reset_password_token, unique: true
    # add_index :people, :confirmation_token,   unique: true
    # add_index :people, :unlock_token,         unique: true
  end
end
