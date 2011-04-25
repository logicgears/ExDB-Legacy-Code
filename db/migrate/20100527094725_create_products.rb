class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.string :product
      t.string :slno
      t.string :model
      t.string :capacity
      t.datetime :datepurchased
      t.integer :warranty
      t.text :remark
      t.integer :consumer_id

      t.timestamps
    end
  end

  def self.down
    drop_table :products
  end
end
