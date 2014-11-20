class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :url
      t.boolean :available
      t.string :video_id
      t.string :provider
      t.string :title
      t.text :description
      t.integer :duration
      t.datetime :date
      t.string :thumbnail_small
      t.string :thumbnail_medium
      t.string :thumbnail_large
      t.string :embed_url
      t.text :embed_code

      t.timestamps
    end
  end
end
