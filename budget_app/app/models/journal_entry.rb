class JournalEntry < ActiveRecord::Base
  belongs_to :user
  belongs_to :subcategory
  belongs_to :account
  belongs_to :bill

end
