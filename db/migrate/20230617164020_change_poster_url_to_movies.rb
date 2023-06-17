class ChangePosterUrlToMovies < ActiveRecord::Migration[7.0]
  def change
    remove_column :movies, :poster_url
  end
end
