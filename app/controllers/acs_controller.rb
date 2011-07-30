class AcsController < ApplicationController
  # GET /acs
  # GET /acs.xml
  def index
    @acs = Ac.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @acs }
    end
  end

  # GET /acs/1
  # GET /acs/1.xml
  def show
    @ac = Ac.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @ac }
    end
  end

  # GET /acs/new
  # GET /acs/new.xml
  def new
    @ac = Ac.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @ac }
    end
  end

  # GET /acs/1/edit
  def edit
    @ac = Ac.find(params[:id])
  end

  # POST /acs
  # POST /acs.xml
  def create
    @ac = Ac.new(params[:ac])

    respond_to do |format|
      if @ac.save
        format.html { redirect_to(@ac, :notice => 'Ac was successfully created.') }
        format.xml  { render :xml => @ac, :status => :created, :location => @ac }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @ac.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /acs/1
  # PUT /acs/1.xml
  def update
    @ac = Ac.find(params[:id])

    respond_to do |format|
      if @ac.update_attributes(params[:ac])
        format.html { redirect_to(@ac, :notice => 'Ac was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @ac.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /acs/1
  # DELETE /acs/1.xml
  def destroy
    @ac = Ac.find(params[:id])
    @ac.destroy

    respond_to do |format|
      format.html { redirect_to(acs_url) }
      format.xml  { head :ok }
    end
  end
end
