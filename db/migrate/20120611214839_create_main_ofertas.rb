class CreateMainOfertas < ActiveRecord::Migration
  def self.up
    create_table :main_ofertas do |t|
      t.integer :oferta_id
      t.integer :day

      t.timestamps
    end
  end

  def self.down
    drop_table :main_ofertas
  end
end
