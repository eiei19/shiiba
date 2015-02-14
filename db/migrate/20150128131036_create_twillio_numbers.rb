class CreateTwillioNumbers < ActiveRecord::Migration
  def change
    create_table :twillio_numbers do |t|
      t.integer :twillio_account_id
      t.string :number
      t.integer :request_method, limit: 1, default: 0
      t.datetime :created_at
      t.datetime :updated_at
    end
    add_index :twillio_numbers, :twillio_account_id
  end
end
