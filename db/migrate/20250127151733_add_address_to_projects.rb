class AddAddressToProjects < ActiveRecord::Migration[7.1]
  def change
    add_column :projects, :address, :string
  end
end
