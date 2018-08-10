class CreateCharges < ActiveRecord::Migration[5.2]
  def change
    create_table :charges do |t|
      t.string :fee_code
      t.string :vehicle_category
      t.string :vehicle_length
      t.decimal :toll_charge, :precision => 8, :scale => 2

      t.timestamps
    end
  end
end
