class AddSex2ToPresents < ActiveRecord::Migration[6.1]
  def change
    add_column :presents, :sex2, :string
  end
end
