class AddLastPaidDateToBills < ActiveRecord::Migration
  def self.up
    add_column :bills, :last_paid, :text
  end

  def self.down
    remove_column :bills, :last_paid
  end
end
