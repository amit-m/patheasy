# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

   #Admin.create(:user_id => "deepak12",:name => "Deepak Dash", :email => "deepak@test.com", :password => "abc123", :password_confirmation => "abc123",:is_superadmin => 1, :is_block=> 0)

 Admin.create(:email => "deepakq@test.com", :password => "test1234", :password_confirmation => "test1234",:user_id => "deepak123", :is_superadmin => 1, :is_block=> 0,:name => "Deepak Dash")


