class ChangeNametoRentalDate < ActiveRecord::Migration[7.0]
  def change
    rename_column :rentals, :date, :rent_date
  end
end
