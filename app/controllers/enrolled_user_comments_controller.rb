class EnrolledUserCommentsController < ApplicationController
  # GET /enrolled_user_comments
  # GET /enrolled_user_comments.json
  load_and_authorize_resource
  before_filter :authenticate

  def index
    @enrolled_user_comments = EnrolledUserComment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @enrolled_user_comments }
    end
  end

  # GET /enrolled_user_comments/1
  # GET /enrolled_user_comments/1.json
  def show
    @enrolled_user_comment = EnrolledUserComment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @enrolled_user_comment }
    end
  end

  # GET /enrolled_user_comments/new
  # GET /enrolled_user_comments/new.json
  def new
    @enrolled_user_comment = EnrolledUserComment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @enrolled_user_comment }
    end
  end

  # GET /enrolled_user_comments/1/edit
  def edit
    @enrolled_user_comment = EnrolledUserComment.find(params[:id])
  end

  # POST /enrolled_user_comments
  # POST /enrolled_user_comments.json
  def create
    @enrolled_user_comment = EnrolledUserComment.new(params[:enrolled_user_comment])

    respond_to do |format|
      if @enrolled_user_comment.save
        format.html { redirect_to @enrolled_user_comment, notice: 'Enrolled user comment was successfully created.' }
        format.json { render json: @enrolled_user_comment, status: :created, location: @enrolled_user_comment }
      else
        format.html { render action: "new" }
        format.json { render json: @enrolled_user_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /enrolled_user_comments/1
  # PUT /enrolled_user_comments/1.json
  def update
    @enrolled_user_comment = EnrolledUserComment.find(params[:id])

    respond_to do |format|
      if @enrolled_user_comment.update_attributes(params[:enrolled_user_comment])
        format.html { redirect_to @enrolled_user_comment, notice: 'Enrolled user comment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @enrolled_user_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /enrolled_user_comments/1
  # DELETE /enrolled_user_comments/1.json
  def destroy
    @enrolled_user_comment = EnrolledUserComment.find(params[:id])
    @enrolled_user_comment.destroy

    respond_to do |format|
      format.html { redirect_to enrolled_user_comments_url }
      format.json { head :no_content }
    end
  end
end
