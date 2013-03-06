class IntervieweesController < ApplicationController
  # GET /interviewees
  # GET /interviewees.json
  def index
    @interviewees = Interviewee.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @interviewees }
    end
  end

  # GET /interviewees/1
  # GET /interviewees/1.json
  def show
    @interviewee = Interviewee.find(params[:id])
    @nav_active = 'show'
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @interviewee }
    end
  end

  # GET /interviewees/new
  # GET /interviewees/new.json
  def new
    @interviewee = Interviewee.new
    @nav_active = 'new'
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @interviewee }
    end
  end

  # GET /interviewees/1/edit
  def edit
    @interviewee = Interviewee.find(params[:id])
     @nav_active = 'edit'
  end

  # POST /interviewees
  # POST /interviewees.json
  def create
    @interviewee = Interviewee.new(params[:interviewee])
    @nav_active = 'create'
    respond_to do |format|
      if @interviewee.save
        format.html { redirect_to @interviewee, notice: 'Interviewee was successfully created.' }
        format.json { render json: @interviewee, status: :created, location: @interviewee }
      else
        format.html { render action: "new" }
        format.json { render json: @interviewee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /interviewees/1
  # PUT /interviewees/1.json
  def update
    @interviewee = Interviewee.find(params[:id])
    @nav_active = 'update'
    respond_to do |format|
      if @interviewee.update_attributes(params[:interviewee])
        format.html { redirect_to @interviewee, notice: 'Interviewee was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @interviewee.errors, status: :unprocessable_entity }
      end
    end
  end

  # GET /interviewees/1
  # GET /interviewees/1.json
  def delete
    @interviewee = Interviewee.find(params[:id])
    @nav_active = 'delete'
    respond_to do |format|
      format.html # delete.html.erb
      format.json { render json: @interviewee }
    end
  end

  # DELETE /interviewees/1
  # DELETE /interviewees/1.json
  def destroy
    @interviewee = Interviewee.find(params[:id])
    @interviewee.destroy

    respond_to do |format|
      format.html { redirect_to interviewees_url }
      format.json { head :no_content }
    end
  end
end
