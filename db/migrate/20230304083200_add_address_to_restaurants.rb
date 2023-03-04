class AddAddressToRestaurants < ActiveRecord::Migration[7.0]
  def change
    # * Whenever you want to change a column, you need to write a migration
    # * Check out Migration Docs for other commands like remove_column, etc.
    add_column :restaurants, :address, :string
  end
end
