class CreatePost2s < ActiveRecord::Migration
  def change
    create_table :post2s do |t|
      t.string :name
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
