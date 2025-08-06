class RenamePhoneNunberToPhoneNumberInCustomUsers < ActiveRecord::Migration[8.0]
  def change
    rename_column :custom_users, :phone_nunber, :phone_number
  end
end
