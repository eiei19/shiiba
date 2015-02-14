class AddDeviseColumn < ActiveRecord::Migration
  def change
    add_column :accounts, :encrypted_password, :string, null: false, default: "", after: :email
    add_column :accounts, :reset_password_token, :string, after: :encrypted_password
    add_column :accounts, :reset_password_sent_at, :datetime, after: :reset_password_token
    add_column :accounts, :remember_created_at, :datetime, after: :reset_password_sent_at
    add_column :accounts, :sign_in_count, :integer, default: 0, null: false, after: :remember_created_at
    add_column :accounts, :current_sign_in_at, :datetime, after: :sign_in_count
    add_column :accounts, :last_sign_in_at, :datetime, after: :current_sign_in_at
    add_column :accounts, :current_sign_in_ip, :string, after: :last_sign_in_at
    add_column :accounts, :last_sign_in_ip, :string, after: :current_sign_in_ip
    add_column :accounts, :confirmation_token, :string, after: :last_sign_in_ip
    add_column :accounts, :confirmed_at, :datetime, after: :confirmation_token
    add_column :accounts, :confirmation_sent_at, :datetime, after: :confirmed_at
    add_column :accounts, :unconfirmed_email, :string, after: :confirmation_sent_at
  end
end
