class User < ActiveRecord::Base
  
has_many :bills, :dependent => :destroy
accepts_nested_attributes_for :bills
end
