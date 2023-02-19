class AddCategoryToPresents < ActiveRecord::Migration[6.1]
  def change
    add_column :presents, :category, :string
  end
end
