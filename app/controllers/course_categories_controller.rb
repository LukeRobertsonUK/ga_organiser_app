class CourseCategoriesController < ApplicationController
  # GET /course_categories
  # GET /course_categories.json
  def index
    @course_categories = CourseCategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @course_categories }
    end
  end

  # GET /course_categories/1
  # GET /course_categories/1.json
  def show
    @course_category = CourseCategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @course_category }
    end
  end

  # GET /course_categories/new
  # GET /course_categories/new.json
  def new
    @course_category = CourseCategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @course_category }
    end
  end

  # GET /course_categories/1/edit
  def edit
    @course_category = CourseCategory.find(params[:id])
  end

  # POST /course_categories
  # POST /course_categories.json
  def create
    @course_category = CourseCategory.new(params[:course_category])

    respond_to do |format|
      if @course_category.save
        format.html { redirect_to @course_category, notice: 'Course category was successfully created.' }
        format.json { render json: @course_category, status: :created, location: @course_category }
      else
        format.html { render action: "new" }
        format.json { render json: @course_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /course_categories/1
  # PUT /course_categories/1.json
  def update
    @course_category = CourseCategory.find(params[:id])

    respond_to do |format|
      if @course_category.update_attributes(params[:course_category])
        format.html { redirect_to @course_category, notice: 'Course category was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @course_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /course_categories/1
  # DELETE /course_categories/1.json
  def destroy
    @course_category = CourseCategory.find(params[:id])
    @course_category.destroy

    respond_to do |format|
      format.html { redirect_to course_categories_url }
      format.json { head :no_content }
    end
  end
end
