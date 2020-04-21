# This migration comes from maawol_engine (originally 20200331164446)
class AddEncryptedPasswordToUsers < ActiveRecord::Migration[6.0]
  def change
		remove_column	:users, :password, :string
		add_column	:users, :encrypted_password, :string, after: :email
	end
end
