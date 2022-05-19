class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.bigint :user_id, foreign_key: true
      t.bigint :movie_id, foreign_key: true
      t.text :comment
      t.text :spoiler
      t.string :purpose
      t.string :comment_title
      t.integer :star
      t.timestamps
    end
  end
end
