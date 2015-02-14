class ChangeTableNameTwillio < ActiveRecord::Migration
  def change
    rename_table :twillio_accounts, :twillios
    rename_table :twillio_numbers, :numbers
  end
end
