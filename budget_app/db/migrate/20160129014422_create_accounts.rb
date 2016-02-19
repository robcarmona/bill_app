class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :name
      t.string :description
      t.references :user
      t.decimal :balance, :precision => 8, :scale => 2
      t.timestamps null: false
    end
  end
end
