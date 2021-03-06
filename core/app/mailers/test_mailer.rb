class TestMailer < ActionMailer::Base

  def test_email(mail_method, user)
    @mail_method = mail_method
    subject = "#{Spree::Config[:site_name]} #{t('subject', :scope => 'test_mailer.test_email')}"
    mail(:to => user.email,
         :subject => subject)
  end

end
