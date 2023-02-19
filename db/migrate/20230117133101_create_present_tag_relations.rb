class CreatePresentTagRelations < ActiveRecord::Migration[6.1]
  def change
    create_table :present_tag_relations do |t|
      t.references :present, null: false, foreign_key: true
      t.references :tag, null: false, foreign_key: true

      t.timestamps
    end
  end
end
