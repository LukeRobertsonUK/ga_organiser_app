class EnrollmentsController < ApplicationController
  # GET /enrollments
  # GET /enrollments.json
  load_and_authorize_resource
  before_filter :authenticate

  def index
    @enrollments = Enrollment.order('course_id')

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @enrollments }
    end
  end

  # GET /enrollments/1
  # GET /enrollments/1.json
  def show
    @enrollment = Enrollment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @enrollment }
    end
  end

  # GET /enrollments/new
  # GET /enrollments/new.json
  def new
    @enrollment = Enrollment.new
    @course = Course.where(id: params[:course_id]).first
    @user = User.where(id: session[:user_id]).first
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @enrollment }
    end
  end

  # GET /enrollments/1/edit
  def edit
    @enrollment = Enrollment.find(params[:id])
    @course = @enrollment.course
    @user = @enrollment.user
  end

  # POST /enrollments
  # POST /enrollments.json
  def create

    unless params[:enrollment][:user_id]
      params[:enrollment][:user_id] = current_user.id
    end
    @enrollment = Enrollment.new(params[:enrollment])

    respond_to do |format|
      if @enrollment.save
        format.html { redirect_to @enrollment.course, notice: 'Enrollment was successfully created.' }
        format.json { render json: @enrollment, status: :created, location: @enrollment }
      else
        format.html { render action: "new" }
        format.json { render json: @enrollment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /enrollments/1
  # PUT /enrollments/1.json
  def update
    @enrollment = Enrollment.find(params[:id])

    respond_to do |format|
      if @enrollment.update_attributes(params[:enrollment])
        format.html { redirect_to @enrollment.course, notice: 'Enrollment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @enrollment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /enrollments/1
  # DELETE /enrollments/1.json
  def destroy
    @enrollment = Enrollment.find(params[:id])
    @course = @enrollment.course
    @enrollment.destroy

    respond_to do |format|
      format.html { redirect_to @course }
      format.json { head :no_content }
    end
  end
end
