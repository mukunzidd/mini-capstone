class AddAttributesToOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :tax, :decimal, precision: 9, scale: 2
  end
end
