class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.references :genre, foreign_key: true
      t.string :title
      t.string :director_name
      t.string :production_year
      t.text :explanation

      t.timestamps
    end
  end
end
