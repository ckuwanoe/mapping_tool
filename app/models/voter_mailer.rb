class VoterMailer < ActionMailer::Base
  def send_notice(voter)
    setup_email(voter)
  end
  
  protected
    def setup_email(voter)
      if voter.city.downcase == ('las vegas' or 'lv' or 'nlv' or 'north las vegas' or 'pahrump')
        @recipients  = "ckuwanoe@roryreid.com"
      else
        @recipients = "eschalon@gmail.com"
      end
      @from        = "ckuwanoe@roryreid.com"
      @subject     = voter.name + " has looked up their voting location in " + voter.city
      @sent_on     = Time.now
      @body[:voter] = voter
    end
end