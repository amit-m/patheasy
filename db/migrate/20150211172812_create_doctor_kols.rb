class CreateDoctorKols < ActiveRecord::Migration
  def change
    create_table :doctor_kols do |t|
      t.text :name
      t.text :address
      t.text :contact_no
      t.timestamps
    end
  end
end
