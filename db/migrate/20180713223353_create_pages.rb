class CreatePages < ActiveRecord::Migration[5.1]
  def change
    create_table :pages do |t|
      t.string :title
      t.text :body
      t.string :slug
      t.integer :views
      t.string :category
      t.timestamps
    end
    add_index :pages, :slug , unique: true
  end
end
