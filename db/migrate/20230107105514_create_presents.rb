class CreatePresents < ActiveRecord::Migration[6.1]
  def change
    create_table :presents do |t|
      t.string :present_name
      t.integer :age
      t.string :sex
      t.string :relation
      t.string :situation
      t.string :cost
      t.text :about
      t.string :image
      t.integer :user_id

      t.timestamps
    end
  end
end
