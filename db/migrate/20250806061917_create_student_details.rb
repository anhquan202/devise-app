class CreateStudentDetails < ActiveRecord::Migration[8.0]
  def change
    create_table :student_details do |t|
      t.string :studenht_name, null: false
      t.integer :student_age, null: false
      t.string :grade, null: false
      t.references :student, foreign_key: true, null: false
      t.timestamps
    end
  end
end
