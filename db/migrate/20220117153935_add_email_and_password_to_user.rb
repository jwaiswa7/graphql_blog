class AddEmailAndPasswordToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :email, :string
    add_column :users, :password_digest, :string
    add_column :users, :is_superadmin, :boolean, default: false
  end
end
