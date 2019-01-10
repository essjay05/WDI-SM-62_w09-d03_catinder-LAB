class CreateCats < ActiveRecord::Migration[5.2]
  def change
    create_table :cats do |t|
      t.string :name
      t.string :image_uri
      t.integer :votes

      t.timestamps
    end
  end
end
