class CreateReceipts < ActiveRecord::Migration
  def change
    create_table :receipts do |t|
			t.integer :provider_id
			t.integer :receiver_id
			t.decimal :cash_value, precision: 10, scale: 2
			t.decimal :pounds_donated, precision: 10, scale: 2
			t.text :notes
			t.timestamps
    end
  end
end
