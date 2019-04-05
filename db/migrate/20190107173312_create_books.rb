class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.string :auther
      t.string :coverURL
      t.string :publish
      t.date :published
      t.string :genre
      t.string :rack_number
      t.string :isbn
      t.integer :price
      t.string :a
      t.string :b

      t.timestamps
    end
  end
end
