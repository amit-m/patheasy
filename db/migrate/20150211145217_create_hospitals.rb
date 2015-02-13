class CreateHospitals < ActiveRecord::Migration
  def change
    create_table :hospitals do |t|
      t.string :name
      t.text   :address
      t.text   :contact_no
      t.timestamps
    end
  end
end
