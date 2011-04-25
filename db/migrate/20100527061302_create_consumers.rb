class CreateConsumers < ActiveRecord::Migration
  def self.up
    create_table :consumers do |t|
      t.string :name
      t.text :address
      t.string :city
      t.integer :pin
      t.string :state
      t.string :hphone
      t.string :phone
      t.string :mobile
      t.string :email
      t.string :website
      t.text :note
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end

  def self.down
    drop_table :consumers
  end
end
