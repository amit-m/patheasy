class AddFieldsToDoctor < ActiveRecord::Migration
  def change
    add_column :doctors, :name, :string
    add_column :doctors, :desgination, :string
    add_column :doctors, :phone_no, :string
    add_column :doctors, :address, :text
    add_column :doctors, :doc_id, :string
  end
end
