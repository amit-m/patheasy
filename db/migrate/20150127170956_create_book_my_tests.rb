class CreateBookMyTests < ActiveRecord::Migration
  def change
    create_table :book_my_tests do |t|
      t.string :name
      t.integer :age
      t.string :gender
      t.text :address
      t.string :mobile
      t.string :alt_mobile_no
      t.string :ref_doc_name
      t.string :home_collection
      t.text :coll_add
      t.datetime :date_sample_coll
      t.integer :test_id

      t.timestamps
    end
  end
end
