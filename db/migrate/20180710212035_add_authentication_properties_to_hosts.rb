class AddAuthenticationPropertiesToHosts < ActiveRecord::Migration[5.2]
  def change
    add_column :hosts, :email, :string
    add_column :hosts, :password_digest, :string
    add_column :hosts, :name, :string
  end
end
