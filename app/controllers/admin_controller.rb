class AdminController < ApplicationController

  def change_password
  end

  def save_password
  end

  def admin_lists
    @admins = Admin.where(is_superadmin: false).order("current_sign_in_at desc")
  end

  def doc_lists
    @docs = Doctor.all
  end

  def new
     @admin = Admin.new
  end

  def edit
     @admin = Admin.find params[:id]
  end
  
 def doc_new
  @doc = Doctor.new
 end

 def doc_edit
   @doc = Doctor.find params[:id] 
 end

 def doc_update
   @doc = Doctor.find params[:id]
     params[:doctor].delete :password unless params[:doctor][:password].present?
      params[:doctor].delete :password_confirmation unless params[:doctor][:password_confirmation].present?
   #  p params[:admin][:password_confirmation]
#sffffffffffffffffffffff
    respond_to do |format|
      if @doc.update_attributes(params[:doctor])
        format.html { redirect_to admin_doc_lists_path, notice: 'Doctor updated successfully' }
        format.json { head :no_content }
      else
        format.html { render action: "doc_edit" }
        format.json { render json: @doc.errors, status: :unprocessable_entity }
      end
    end
 end

 def report
 end

 def test_requests
    @test_req = BookMyTest.all
 end
 
  def test_req_detail
     
    @test_req = BookMyTest.find(params[:id])
  end

  def save_doc
   @doc = Doctor.new(params[:doctor])
    pwd = @doc.password
    respond_to do |format|
     
      if @doc.save
        Notification.send_login_cred_to_doc(@doc, pwd).deliver
        format.html { redirect_to admin_doc_lists_path, notice: 'Doctor was successfully created.' }       
        format.json { render json: @doc, status: :created, location: @doc }
      else
        format.html { render action: "new" }
        format.json { render json: @doc.errors, status: :unprocessable_entity }
      end
    end

  end

  def save_admin
    @admin = Admin.new(params[:admin])
    pwd = @admin.password
    respond_to do |format|
     
      if @admin.save
        Notification.send_login_cred_to_admin(@admin, pwd).deliver
        format.html { redirect_to admin_admin_lists_path, notice: 'Admin was successfully created.' }       
        format.json { render json: @admin, status: :created, location: @admin }
      else
        format.html { render action: "new" }
        format.json { render json: @admin.errors, status: :unprocessable_entity }
      end
    end
  
  end

def update
     @admin = Admin.find params[:id]
     params[:admin].delete :password unless params[:admin][:password].present?
      params[:admin].delete :password_confirmation unless params[:admin][:password_confirmation].present?
   #  p params[:admin][:password_confirmation]
#sffffffffffffffffffffff
    respond_to do |format|
      if @admin.update_attributes(params[:admin])
        format.html { redirect_to admin_admin_lists_path, notice: 'Admin updated successfully' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin.errors, status: :unprocessable_entity }
      end
    end
  end
  def block
      @admin = Admin.find params[:id]
      @admin.update_column :is_block, true
      redirect_to admin_admin_lists_path, notice: 'Admin blocked successfully'
 
  end

  def unblock
 	@admin = Admin.find params[:id]
      @admin.update_column :is_block, false
      redirect_to admin_admin_lists_path, notice: 'Admin unblocked successfully'
 
  end


  def save_password
       
    if current_admin.update_attributes(params[:admin])
      flash[:notice] = "Password has been changed successfully."
      redirect_to root_path
    else
      respond_to do |format|
        format.html { render :action => "change_password" }
        format.xml  { render :xml => @admin.errors, :status => :unprocessable_entity }
      end
    end
  end  

def doc_change_password
  end

def doc_save_password
       
    if current_doctor.update_attributes(params[:admin])
      flash[:notice] = "Password has been changed successfully."
      redirect_to root_path
    else
      respond_to do |format|
        format.html { render :action => "change_password" }
        format.xml  { render :xml => @admin.errors, :status => :unprocessable_entity }
      end
    end
  end  

  	
end
