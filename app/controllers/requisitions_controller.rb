class RequisitionsController < ApplicationController
  # GET /requisitions
  # GET /requisitions.json
  def index
    @requisitions = Requisition.all

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  # GET /requisitions/1
  # GET /requisitions/1.json

  def new
    @requisition = Requisition.new

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  # GET /requisitions/1/edit
  def edit
    @requisition = Requisition.find(params[:id])
  end

  # POST /requisitions
  # POST /requisitions.json
  def create
    @requisition = Requisition.new(params[:requisition])

    respond_to do |format|
      if @requisition.save
        format.html {redirect_to root_url, notice: 'Requisition was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  # PUT /requisitions/1
  # PUT /requisitions/1.json

  def destroy
    @requisition = Requisition.find(params[:id])
    @requisition.destroy

    respond_to do |format|
      format.html { redirect_to requisitions_url }
    end
  end
end
