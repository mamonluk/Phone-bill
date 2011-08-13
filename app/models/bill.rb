class Bill < ActiveRecord::Base
attr_accessible :month, :amount, :paid, :user_id, :year, :last_paid


belongs_to :user
end
