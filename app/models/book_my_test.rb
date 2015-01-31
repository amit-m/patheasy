class BookMyTest < ActiveRecord::Base
  attr_accessible :address, :age, :alt_mobile_no, :coll_add, :date_sample_coll, :gender, :home_collection, :mobile, :name, :ref_doc_name, :test_id
  
  belongs_to :medical_test,:class_name=>"MedicalTest",:foreign_key=>"test_id"

end


