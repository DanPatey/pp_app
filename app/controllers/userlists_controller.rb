class UserlistsController < ApplicationController
  # GET /userlists
  # GET /userlists.json
  def index
    @userlists = Userlist.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @userlists }
    end
  end

  # GET /userlists/1
  # GET /userlists/1.json
  def show
    @userlist = Userlist.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @userlist }
    end
  end

  # GET /userlists/new
  # GET /userlists/new.json
  def new
    @userlist = Userlist.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @userlist }
    end
  end

  # GET /userlists/1/edit
  def edit
    @userlist = Userlist.find(params[:id])
  end

  # POST /userlists
  # POST /userlists.json
  def create
    @userlist = Userlist.new(params[:userlist])

    respond_to do |format|
      if @userlist.save
        format.html { redirect_to @userlist, notice: 'Userlist was successfully created.' }
        format.json { render json: @userlist, status: :created, location: @userlist }
      else
        format.html { render action: "new" }
        format.json { render json: @userlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /userlists/1
  # PUT /userlists/1.json
  def update
    @userlist = Userlist.find(params[:id])

    respond_to do |format|
      if @userlist.update_attributes(params[:userlist])
        format.html { redirect_to @userlist, notice: 'Userlist was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @userlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /userlists/1
  # DELETE /userlists/1.json
  def destroy
    @userlist = Userlist.find(params[:id])
    @userlist.destroy

    respond_to do |format|
      format.html { redirect_to userlists_url }
      format.json { head :no_content }
    end
  end
end
