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
