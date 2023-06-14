class AddRatingToMovies < ActiveRecord::Migration[7.0]
  def change
    add_column :movies, :rating, :float
    change_column_default :movies, :price, default: 3
  end
end
