class CreateChemists < ActiveRecord::Migration
  def change
    create_table :chemists do |t|
      t.text :name
      t.text :contact_no
      t.timestamps
    end
  end
end
