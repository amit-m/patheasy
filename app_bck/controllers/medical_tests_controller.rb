class MedicalTestsController < ApplicationController
  before_filter :set_medical_test, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @medical_tests = MedicalTest.all
    respond_with(@medical_tests)
  end

  def show
    respond_with(@medical_test)
  end

  def new
    @medical_test = MedicalTest.new
    respond_with(@medical_test)
  end

  def edit
  end

  def create
    @medical_test = MedicalTest.new(params[:medical_test])
    @medical_test.save
    respond_with(@medical_test)
  end

  def update
    @medical_test.update_attributes(params[:medical_test])
    respond_with(@medical_test)
  end

  def destroy
    @medical_test.destroy
    respond_with(@medical_test)
  end

  private
    def set_medical_test
      @medical_test = MedicalTest.find(params[:id])
    end
end
