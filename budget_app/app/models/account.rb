class Account < ActiveRecord::Base
  belongs_to :user
  has_many :journal_entries
  validates_presence_of :user
  validates_presence_of :name
end
