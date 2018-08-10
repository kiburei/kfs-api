class CreatePayments < ActiveRecord::Migration[5.2]
  def change
    create_table :payments do |t|
      t.date :date
      t.string :vehicle_type
      t.string :reg_num
      t.decimal :amount_paid, :precision => 8, :scale => 2
      t.string :channel

      t.timestamps
    end
  end
end
