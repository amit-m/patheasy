class Notification < ActionMailer::Base
  default from: "PathEasy<no-reply@patheasy.com>"




 def send_login_cred_to_admin(user,pwd)  
 	@userid = user.user_id
 	@pwd = pwd
    mail(:to => user.email, :subject => "Your Login Credentials")  
  end  

 def send_login_cred_to_doc(doc,pwd)
        @docid = doc.doc_id
 	@pwd = pwd
        mail(:to => doc.email, :subject => "Your Login Credentials") 
 end

end
