class AddRolesToPeople < ActiveRecord::Migration[6.0]
  def change
    add_column :people, :admin,    :boolean, default: false
    add_column :people, :provider, :boolean, default: false
    add_column :people, :client,   :boolean, default: true
  end
end
