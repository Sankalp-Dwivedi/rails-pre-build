class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.decimal :size
      t.decimal :rate
      t.decimal :total_price
      t.text :address
      t.text :location
      t.string :area_type

      t.timestamps
    end
  end
end
