class VoterMailer < ActionMailer::Base
  def send_notice(voter)
    setup_email(voter)
  end
  
  protected
    def setup_email(voter)
      @recipients  = "ckuwanoe@roryreid.com"
      @from        = "ckuwanoe@roryreid.com"
      @subject     = voter.name + " has looked up their voting location"
      @sent_on     = Time.now
      @body[:voter] = voter
    end
end