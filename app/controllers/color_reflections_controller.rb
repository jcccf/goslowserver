class ColorReflectionsController < ApplicationController
  # GET /color_reflections
  # GET /color_reflections.xml
  def index
    @color_reflections = ColorReflection.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @color_reflections }
    end
  end

  # GET /color_reflections/1
  # GET /color_reflections/1.xml
  def show
    @color_reflection = ColorReflection.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @color_reflection }
    end
  end

  # GET /color_reflections/new
  # GET /color_reflections/new.xml
  def new
    @color_reflection = ColorReflection.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @color_reflection }
    end
  end

  # GET /color_reflections/1/edit
  def edit
    @color_reflection = ColorReflection.find(params[:id])
  end

  # POST /color_reflections
  # POST /color_reflections.xml
  def create
    @color_reflection = ColorReflection.new(params[:color_reflection])

    respond_to do |format|
      if @color_reflection.save
        format.html { redirect_to(@color_reflection, :notice => 'Color reflection was successfully created.') }
        format.xml  { render :xml => @color_reflection, :status => :created, :location => @color_reflection }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @color_reflection.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /color_reflections/1
  # PUT /color_reflections/1.xml
  def update
    @color_reflection = ColorReflection.find(params[:id])

    respond_to do |format|
      if @color_reflection.update_attributes(params[:color_reflection])
        format.html { redirect_to(@color_reflection, :notice => 'Color reflection was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @color_reflection.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /color_reflections/1
  # DELETE /color_reflections/1.xml
  def destroy
    @color_reflection = ColorReflection.find(params[:id])
    @color_reflection.destroy

    respond_to do |format|
      format.html { redirect_to(color_reflections_url) }
      format.xml  { head :ok }
    end
  end
end
