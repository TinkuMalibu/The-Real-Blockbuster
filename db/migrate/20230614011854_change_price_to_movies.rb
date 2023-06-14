class ChangePriceToMovies < ActiveRecord::Migration[7.0]
  def change
    change_column_default :movies, :price, 3
  end
end
