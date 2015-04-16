class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :summary
      t.datetime :pub_date
      t.belongs_to :list, index: true

      t.timestamps null: false
    end
    add_foreign_key :books, :lists
  end
end
