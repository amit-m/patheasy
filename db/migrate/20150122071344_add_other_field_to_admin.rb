class AddOtherFieldToAdmin < ActiveRecord::Migration
  def change
    add_column :admins, :designation, :string
    add_column :admins, :phone, :string
    add_column :admins, :residential_address, :text
    add_column :admins, :emp_id, :string
    add_column :admins, :doj, :datetime
  end
end
