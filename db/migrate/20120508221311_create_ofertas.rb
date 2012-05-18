class CreateOfertas < ActiveRecord::Migration
  def self.up
    create_table :ofertas do |t|
      t.string :name
      t.text :description
      t.string :value
      t.datetime :validity
      t.string :days
      t.string :hour
      t.string :conditions
      t.has_attached_file :picture

      t.timestamps
    end
  end

  def self.down
    drop_table :ofertas
  end
end
