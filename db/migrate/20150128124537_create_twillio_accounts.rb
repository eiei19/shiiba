class CreateTwillioAccounts < ActiveRecord::Migration
  def change
    create_table :twillio_accounts do |t|
      t.integer :account_id
      t.string :sid
      t.string :auth_token
      t.string :test_sid
      t.string :test_auth_token
      t.string :test_phone_number
      t.datetime :created_at
      t.datetime :updated_at
    end
    add_index :twillio_accounts, :account_id
    add_index :accounts, :email
  end
end
