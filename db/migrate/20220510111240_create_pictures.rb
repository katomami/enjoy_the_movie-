class CreatePictures < ActiveRecord::Migration[5.2]
  def change
    create_table :pictures do |t|
      t.string :title
      t.bigint :jan
      t.string :image_url
      t.string :caption
      t.timestamps
    end
  end
end
