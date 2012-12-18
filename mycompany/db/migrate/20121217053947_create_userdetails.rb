class CreateUserdetails < ActiveRecord::Migration
  def change
    create_table :userdetails do |t|
      t.string :First_Name
      t.string :Last_Name
      t.string :Emp_id
      t.date :Date_of_Birth
      t.string :Gender
      t.text :Address
      t.text :Hobbies

      t.timestamps
    end
  end
end
