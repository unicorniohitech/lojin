class AddColunsToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :characteristic, :string
  end
end
