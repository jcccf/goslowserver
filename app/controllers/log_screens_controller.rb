class LogScreensController < ApplicationController
  
  skip_before_filter :verify_authenticity_token, :only => [:create]
  
  # GET /log_screens
  # GET /log_screens.xml
  def index
    @log_screens = LogScreen.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @log_screens }
    end
  end

  # GET /log_screens/1
  # GET /log_screens/1.xml
  def show
    @log_screen = LogScreen.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @log_screen }
    end
  end

  # GET /log_screens/new
  # GET /log_screens/new.xml
  def new
    @log_screen = LogScreen.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @log_screen }
    end
  end

  # GET /log_screens/1/edit
  def edit
    @log_screen = LogScreen.find(params[:id])
  end

  # POST /log_screens
  # POST /log_screens.xml
  def create
    @log_screen = LogScreen.new(params[:log_screen])

    respond_to do |format|
      if @log_screen.save
        format.html { redirect_to(@log_screen, :notice => 'Log screen was successfully created.') }
        format.xml  { render :xml => @log_screen, :status => :created, :location => @log_screen }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @log_screen.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /log_screens/1
  # PUT /log_screens/1.xml
  def update
    @log_screen = LogScreen.find(params[:id])

    respond_to do |format|
      if @log_screen.update_attributes(params[:log_screen])
        format.html { redirect_to(@log_screen, :notice => 'Log screen was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @log_screen.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /log_screens/1
  # DELETE /log_screens/1.xml
  def destroy
    @log_screen = LogScreen.find(params[:id])
    @log_screen.destroy

    respond_to do |format|
      format.html { redirect_to(log_screens_url) }
      format.xml  { head :ok }
    end
  end
end
