class CreateJournalEntries < ActiveRecord::Migration
  def change
    create_table :journal_entries do |t|
      t.string :description
      t.date :date
      t.decimal :amount, :precision => 8, :scale => 2
      t.string :month

      t.references :user
      t.references :subcategory
      t.references :account
      t.references :bill
      t.timestamps null: false
    end
  end
end
