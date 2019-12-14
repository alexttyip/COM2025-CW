class AddFieldsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :sex, :integer
    add_column :users, :dob, :date

    #change_column_null :users, :first_name, false
    #change_column_null :users, :last_name, false
    #change_column_null :users, :sex, false
    #change_column_null :users, :dob, false
  end
end
