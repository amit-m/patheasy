class CreateNurshingHomes < ActiveRecord::Migration
  def change
    create_table :nurshing_homes do |t|
      t.text :name
      t.text :address
      t.text :contact_no
      t.timestamps
    end
  end
end
