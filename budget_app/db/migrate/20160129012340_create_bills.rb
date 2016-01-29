class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.string :name
      t.string :url
      t.boolean :auto_withdraw
      t.date :due
      t.string :username
      t.references :user
      t.integer :alert_within
      t.decimal :balance, :precision => 8, :scale => 2

      t.timestamps null: false
    end
  end
end
