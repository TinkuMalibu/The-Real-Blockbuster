class AddLastnameToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :lastname, :string
    add_column :users, :phone_number, :string
    add_column :users, :address, :string
  end
end
