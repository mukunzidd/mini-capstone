class AddStateToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :state, :string
  end
end
