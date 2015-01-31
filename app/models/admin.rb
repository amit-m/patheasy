class Admin < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :user_id, :name,
 :is_superadmin, :is_block, :designation, :phone, :residential_address, :emp_id, :doj
  # attr_accessible :title, :body
   validates :user_id,
    :uniqueness => {
      :case_sensitive => false
    }


 #Allow salon admin to login if SU approves
def active_for_authentication?
  # Uncomment the below debug statement to view the properties of the returned self model values.
  # logger.debug self.to_yaml
  super && !is_block
end


 def is_super_admin?
   self.is_superadmin
 end


end
