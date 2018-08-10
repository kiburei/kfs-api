class AddAttributesToPayments < ActiveRecord::Migration[5.2]
  def change
    add_column :payments, :vehicle_length, :string
  end
end
