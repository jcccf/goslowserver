class TextReflectionsController < ApplicationController
  # GET /text_reflections
  # GET /text_reflections.xml
  def index
    @text_reflections = TextReflection.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @text_reflections }
    end
  end

  # GET /text_reflections/1
  # GET /text_reflections/1.xml
  def show
    @text_reflection = TextReflection.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @text_reflection }
    end
  end

  # GET /text_reflections/new
  # GET /text_reflections/new.xml
  def new
    @text_reflection = TextReflection.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @text_reflection }
    end
  end

  # GET /text_reflections/1/edit
  def edit
    @text_reflection = TextReflection.find(params[:id])
  end

  # POST /text_reflections
  # POST /text_reflections.xml
  def create
    @text_reflection = TextReflection.new(params[:text_reflection])

    respond_to do |format|
      if @text_reflection.save
        format.html { redirect_to(@text_reflection, :notice => 'Text reflection was successfully created.') }
        format.xml  { render :xml => @text_reflection, :status => :created, :location => @text_reflection }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @text_reflection.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /text_reflections/1
  # PUT /text_reflections/1.xml
  def update
    @text_reflection = TextReflection.find(params[:id])

    respond_to do |format|
      if @text_reflection.update_attributes(params[:text_reflection])
        format.html { redirect_to(@text_reflection, :notice => 'Text reflection was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @text_reflection.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /text_reflections/1
  # DELETE /text_reflections/1.xml
  def destroy
    @text_reflection = TextReflection.find(params[:id])
    @text_reflection.destroy

    respond_to do |format|
      format.html { redirect_to(text_reflections_url) }
      format.xml  { head :ok }
    end
  end
end
