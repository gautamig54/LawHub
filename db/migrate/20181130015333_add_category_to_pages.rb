class AddCategoryToPages < ActiveRecord::Migration[5.1]
  def change
    add_column :pages, :category, :string
  end
end
