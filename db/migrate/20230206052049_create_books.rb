class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :book_name
      t.belongs_to :author, foreign_key: true
      t.datetime :published_at
      t.timestamps
    end
  end
end
