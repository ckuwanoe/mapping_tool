class VotersController < ApplicationController
  skip_before_filter :verify_authenticity_token
  
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
      VoterMailer.deliver_send_notice(@voter)
      redirect_to @voter
    else
      flash[:error] = "Could not look up address. Please try again."
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
