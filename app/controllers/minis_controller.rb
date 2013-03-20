class MinisController < ApplicationController
  before_filter :authenticate_admin!, :except => [:index, :show]
  # GET /minis
  # GET /minis.json
  def index
    @minis = Mini.all
    puts "#{@minis.to_s}"
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @minis }
    end
  end

  # GET /minis/1
  # GET /minis/1.json
  def show
    @mini = Mini.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mini }
    end
  end

  # GET /minis/new
  # GET /minis/new.json
  def new
    @mini = Mini.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mini }
    end
  end

  # GET /minis/1/edit
  def edit
    @mini = Mini.find(params[:id])
  end

  # POST /minis
  # POST /minis.json
  def create
    @mini = Mini.new(params[:mini])

    respond_to do |format|
      if @mini.save
        format.html { redirect_to @mini, notice: 'Mini was successfully created.' }
        format.json { render json: @mini, status: :created, location: @mini }
      else
        format.html { render action: "new" }
        format.json { render json: @mini.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /minis/1
  # PUT /minis/1.json
  def update
    @mini = Mini.find(params[:id])

    respond_to do |format|
      if @mini.update_attributes(params[:mini])
        format.html { redirect_to @mini, notice: 'Mini was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @mini.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /minis/1
  # DELETE /minis/1.json
  def destroy
    @mini = Mini.find(params[:id])
    @mini.destroy

    respond_to do |format|
      format.html { redirect_to minis_url }
      format.json { head :no_content }
    end
  end
end
