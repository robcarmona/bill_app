class CreateJournalEntries < ActiveRecord::Migration
  def change
    create_table :journal_entries do |t|
      t.string :description
      t.date :date
      t.decimal :amount, :precision => 8, :scale => 2
      t.timestamps null: false
    end
  end
end
