class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
