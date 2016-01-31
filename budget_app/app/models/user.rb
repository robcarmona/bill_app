class User < ActiveRecord::Base
  has_secure_password
  has_many :journal_entries
  has_many :accounts
  has_many :bills
end
