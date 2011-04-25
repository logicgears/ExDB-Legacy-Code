class ConsumersController < ApplicationController

  auto_complete_for :consumer, :name

  # GET /consumers
  # GET /consumers.xml
  def index
    
    params[:search].capitalize! if params[:search]

    @consumers = Consumer.find(:all, :conditions => ['name LIKE ?', "%#{params[:search]}%"], :order => 'name')
    #@consumers = Consumer.all

    respond_to do |format|
      format.js
      format.html # index.html.erb
      format.xml  { render :xml => @consumers }
    end
  end

  # GET /consumers/1
  # GET /consumers/1.xml
  def show
    @consumer = Consumer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @consumer }
    end
  end

  # GET /consumers/new
  # GET /consumers/new.xml
  def new
    @consumer = Consumer.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @consumer }
    end
  end

  # GET /consumers/1/edit
  def edit
    @consumer = Consumer.find(params[:id])
  end

  # POST /consumers
  # POST /consumers.xml
  def create
    @consumer = Consumer.new(params[:consumer])
    @consumer.name.capitalize!
    @consumer.city.capitalize!
    @consumer.state.capitalize!

    respond_to do |format|
      if @consumer.save
        format.html { redirect_to(@consumer, :notice => 'Consumer was successfully created.') }
        format.xml  { render :xml => @consumer, :status => :created, :location => @consumer }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @consumer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /consumers/1
  # PUT /consumers/1.xml
  def update
    @consumer = Consumer.find(params[:id])

    respond_to do |format|
      if @consumer.update_attributes(params[:consumer])
        format.html { redirect_to(@consumer, :notice => 'Consumer was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @consumer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /consumers/1
  # DELETE /consumers/1.xml
  def destroy
    @consumer = Consumer.find(params[:id])
    @consumer.destroy

    respond_to do |format|
      format.html { redirect_to(consumers_url) }
      format.xml  { head :ok }
    end
  end
end
