class CreateMedicalTests < ActiveRecord::Migration
  def change
    create_table :medical_tests do |t|
      t.references :category
      t.string :name
      t.integer :duration_of_rpt
      t.text :clinical_restrictn
      t.float :cost_of_text
      t.text :specimen_required

      t.timestamps
    end
    add_index :medical_tests, :category_id
  end
end
