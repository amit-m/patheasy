class MedicalTest < ActiveRecord::Base
  belongs_to :category
  attr_accessible :clinical_restrictn, :cost_of_text, :duration_of_rpt, :name, :specimen_required,:category_id
  
end
