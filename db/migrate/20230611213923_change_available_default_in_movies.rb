class ChangeAvailableDefaultInMovies < ActiveRecord::Migration[7.0]
  def change
    change_column_default :movies, :available, from: nil, to: true
  end
end
