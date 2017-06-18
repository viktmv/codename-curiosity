class CreateLists < ActiveRecord::Migration[5.1]
  def change
    create_table :lists do |t|
      t.string :name, null: false
      t.string :kind
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
