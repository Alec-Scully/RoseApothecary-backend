class CreateCart < ActiveRecord::Migration[6.1]
  def change
    create_table :carts do |t|
      t.integer :user_id
      t.integer :items, array: true

      t.timestamps
    end
  end
end
