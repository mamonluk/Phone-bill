class AddYearToBills < ActiveRecord::Migration
  def self.up
    add_column :bills, :year, :integer
  end

  def self.down
    remove_column :bills, :year
  end
end
