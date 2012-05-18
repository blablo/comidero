class CreateAddresses < ActiveRecord::Migration
  def self.up
    create_table :addresses do |t|
      t.string :street
      t.string :street2
      t.string :city
      t.string :phone
      t.float :latitude
      t.float :longitude
      t.integer :oferta_id

      t.timestamps
    end
  end

  def self.down
    drop_table :addresses
  end
end
