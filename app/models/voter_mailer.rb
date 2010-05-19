class VoterMailer < ActionMailer::Base
  def send_notice(voter)
    setup_email(voter)
  end
  
  protected
    def setup_email(voter)
      @recipients  = "anagatani@roryreid.com"
      @from        = "ckuwanoe@roryreid.com"
      @subject     = voter.name + " has looked up their voting location in " + voter.city
      @sent_on     = Time.now
      @body[:voter] = voter
    end
end