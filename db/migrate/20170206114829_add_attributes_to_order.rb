class AddAttributesToOrder < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :subtotal, :decimal, precision: 9, scale: 2
    add_column :orders, :total, :decimal, precision: 9, scale: 2
  end
end
