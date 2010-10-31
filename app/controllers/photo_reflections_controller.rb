class PhotoReflectionsController < ApplicationController
  # GET /photo_reflections
  # GET /photo_reflections.xml
  def index
    @photo_reflections = PhotoReflection.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml { render :xml => @photo_reflections }
    end
  end

  # GET /photo_reflections/1
  # GET /photo_reflections/1.xml
  def show
    @photo_reflection = PhotoReflection.find(params[:id])

    send_data(@photo_reflection.data, :filename => @photo_reflection.name,
              :type                             => @photo_reflection.content_type, :disposition => "inline")

    #respond_to do |format|
    #  format.html # show.html.erb
    #  format.xml { render :xml => @photo_reflection }
    #end
  end

  # GET /photo_reflections/new
  # GET /photo_reflections/new.xml
  def new
    @photo_reflection = PhotoReflection.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml { render :xml => @photo_reflection }
    end
  end

  # GET /photo_reflections/1/edit
  def edit
    @photo_reflection = PhotoReflection.find(params[:id])
  end

  # POST /photo_reflections
  # POST /photo_reflections.xml
  def create
    @photo_reflection = PhotoReflection.new(params[:photo_reflection])

    respond_to do |format|
      if @photo_reflection.save
        format.html { redirect_to(@photo_reflection, :notice => 'Photo reflection was successfully created.') }
        format.xml { render :xml => @photo_reflection, :status => :created, :location => @photo_reflection }
      else
        format.html { render :action => "new" }
        format.xml { render :xml => @photo_reflection.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /photo_reflections/1
  # PUT /photo_reflections/1.xml
  def update
    @photo_reflection = PhotoReflection.find(params[:id])

    respond_to do |format|
      if @photo_reflection.update_attributes(params[:photo_reflection])
        format.html { redirect_to(@photo_reflection, :notice => 'Photo reflection was successfully updated.') }
        format.xml { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml { render :xml => @photo_reflection.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /photo_reflections/1
  # DELETE /photo_reflections/1.xml
  def destroy
    @photo_reflection = PhotoReflection.find(params[:id])
    @photo_reflection.destroy

    respond_to do |format|
      format.html { redirect_to(photo_reflections_url) }
      format.xml { head :ok }
    end
  end
end
