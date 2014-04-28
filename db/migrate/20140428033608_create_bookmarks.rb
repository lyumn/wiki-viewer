class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.string :page
      t.string :url
      t.string :scroll

      t.timestamps
    end
  end
end
