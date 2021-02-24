class CreateItem < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :cost
      t.string :category, array: true
      t.string :image
      t.string :description

      t.timestamps
    end
  end
end
