class AddCity < ActiveRecord::Migration
  def self.up
    add_column :voters, :city, :string
  end

  def self.down
    drop_column :voters, :city
  end
end
