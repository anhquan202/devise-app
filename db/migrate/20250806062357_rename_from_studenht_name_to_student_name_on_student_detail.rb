class RenameFromStudenhtNameToStudentNameOnStudentDetail < ActiveRecord::Migration[8.0]
  def change
    rename_column :student_details, :studenht_name, :student_name
    # Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
