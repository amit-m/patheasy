class BookMyTestsController < ApplicationController
  before_filter :set_book_my_test, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @book_my_tests = BookMyTest.all
    respond_with(@book_my_tests)
  end

  def show
    respond_with(@book_my_test)
  end

  def new    
  # require 'rubygems' 
  # require 'roo'
  # ex = Roo::Excel.new("#{Rails.root}/public/Kolkata Guide.xls")
  #  ex.default_sheet = ex.sheets[0] #Mention the sheet number
  #  2.upto(127) do |line| #start and end of row
   #    name = ex.cell(line,'B')
  #     adr = ex.cell(line,'C')
  #     ph1 = ex.cell(line,'D').floor if ex.cell(line,'D').present?
  #     ph2 = ex.cell(line,'E').floor if ex.cell(line,'E').present?
  #     ph3 = ex.cell(line,'F').floor if ex.cell(line,'F').present?
  #     ph4 = ex.cell(line,'G').floor if ex.cell(line,'G').present?
  #     ph5 = ex.cell(line,'H').floor if ex.cell(line,'H').present?
  #     ph6 = ex.cell(line,'I').floor if ex.cell(line,'I').present?
  #     phone = ph1.to_s + "," + ph2.to_s + "," + ph3.to_s + "," + ph4.to_s + "," + ph5.to_s + "," + ph6.to_s       
   #    @hos = NurshingHome.create(:name => name,:address => adr,:contact_no => phone)
   #end
    @book_my_test = BookMyTest.new
    respond_with(@book_my_test)
  end

  def edit
  end

  def create
    @book_my_test = BookMyTest.new(params[:book_my_test])
    @book_my_test.save
    flash[:notice] ="You have successfully booked a test and will be contact soon"
    redirect_to "/"
    #respond_with(@book_my_test)
  end

  def update
    @book_my_test.update_attributes(params[:book_my_test])
    respond_with(@book_my_test)
  end

  def destroy
    @book_my_test.destroy
    respond_with(@book_my_test)
  end

  private
    def set_book_my_test
      @book_my_test = BookMyTest.find(params[:id])
    end
end
