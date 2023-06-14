class AddDaysRentedToRentals < ActiveRecord::Migration[7.0]
  def change
    add_column :rentals, :days_rented, :integer
  end
end
