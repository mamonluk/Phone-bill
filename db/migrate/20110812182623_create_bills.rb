class CreateBills < ActiveRecord::Migration
  def self.up
    create_table :bills do |t|
      t.string :month
      t.float :amount
      t.string :paid
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :bills
  end
end
