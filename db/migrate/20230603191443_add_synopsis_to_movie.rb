class AddSynopsisToMovie < ActiveRecord::Migration[7.0]
  def change
    add_column :movies, :synopsis, :string
    add_column :movies, :director, :string
    add_column :movies, :year, :integer
    add_column :movies, :genre, :string
  end
end
