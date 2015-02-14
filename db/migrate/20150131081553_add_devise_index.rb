class AddDeviseIndex < ActiveRecord::Migration
  def change
    add_index :accounts, :reset_password_token, unique: true
    add_index :accounts, :confirmation_token,   unique: true
  end
end
