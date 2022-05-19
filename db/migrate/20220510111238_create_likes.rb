class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.integer :user_id, index: true
      t.integer :movie_id, index: true
      t.index [:user_id, :movie_id], unique: true
      t.timestamps
    end
  end
end
