class VotersController < ApplicationController
  def index
  end
  
  def show
    @voter = Voter.find(params[:id])
  end
  
  def new
    @voter = Voter.new
  end
  
  def create
    if params[:voter][:month] and params[:voter][:day]
      params[:voter][:date_searched] = '2010-' + params[:voter][:month] + '-' + params[:voter][:day]
    end
    @voter = Voter.new(params[:voter])
    if @voter.save
      flash[:notice] = "Successfully created voter."
      redirect_to @voter
    else
      render :action => 'new'
    end
  end
  
  def edit
    @voter = Voter.find(params[:id])
  end
  
  def update
    @voter = Voter.find(params[:id])
    if @voter.update_attributes(params[:voter])
      flash[:notice] = "Successfully updated voter."
      redirect_to @voter
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @voter = Voter.find(params[:id])
    @voter.destroy
    flash[:notice] = "Successfully destroyed voter."
    redirect_to voter_url
  end
end
