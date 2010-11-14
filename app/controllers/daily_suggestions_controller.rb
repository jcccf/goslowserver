class DailySuggestionsController < ApplicationController
  # GET /daily_suggestions
  # GET /daily_suggestions.xml
  def index
    @daily_suggestions = DailySuggestion.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @daily_suggestions }
    end
  end

  # GET /daily_suggestions/1
  # GET /daily_suggestions/1.xml
  def show
    @daily_suggestion = DailySuggestion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @daily_suggestion }
    end
  end

  # GET /daily_suggestions/new
  # GET /daily_suggestions/new.xml
  def new
    @daily_suggestion = DailySuggestion.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @daily_suggestion }
    end
  end

  # GET /daily_suggestions/1/edit
  def edit
    @daily_suggestion = DailySuggestion.find(params[:id])
  end

  # POST /daily_suggestions
  # POST /daily_suggestions.xml
  def create
    @daily_suggestion = DailySuggestion.new(params[:daily_suggestion])

    respond_to do |format|
      if @daily_suggestion.save
        format.html { redirect_to(@daily_suggestion, :notice => 'Daily suggestion was successfully created.') }
        format.xml  { render :xml => @daily_suggestion, :status => :created, :location => @daily_suggestion }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @daily_suggestion.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /daily_suggestions/1
  # PUT /daily_suggestions/1.xml
  def update
    @daily_suggestion = DailySuggestion.find(params[:id])

    respond_to do |format|
      if @daily_suggestion.update_attributes(params[:daily_suggestion])
        format.html { redirect_to(@daily_suggestion, :notice => 'Daily suggestion was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @daily_suggestion.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /daily_suggestions/1
  # DELETE /daily_suggestions/1.xml
  def destroy
    @daily_suggestion = DailySuggestion.find(params[:id])
    @daily_suggestion.destroy

    respond_to do |format|
      format.html { redirect_to(daily_suggestions_url) }
      format.xml  { head :ok }
    end
  end
end
