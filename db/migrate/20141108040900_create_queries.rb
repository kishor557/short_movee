class CreateQueries < ActiveRecord::Migration
  def change
    create_table :queries do |t|
      t.string :email
      t.string :subject
      t.text :content

      t.timestamps
    end
  end
end
