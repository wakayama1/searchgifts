class AddPlaceToPresents < ActiveRecord::Migration[6.1]
  def change
    add_column :presents, :place, :string
  end
end
