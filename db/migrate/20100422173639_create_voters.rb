class CreateVoters < ActiveRecord::Migration
  def self.up
    create_table :voters do |t|
      t.column :street_address, :string
      t.column :zip_code, :integer
      t.column :name, :string
      t.column :phone_number, :string
      t.column :email, :string
      t.column :date_searched, :date
      t.timestamps
    end
  end

  def self.down
    drop_table :voters
  end
end
