class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :user_id, index: true
      t.integer :movie_id, index: true
      t.text :comment
      t.text :spoiler
      t.string :purpose
      t.string :comment_title
      t.integer :star
      t.timestamps
    end
  end
end
