class UserMailer < ApplicationMailer
  helper :application
  default from: Settings.config.mailer.default_from

  def send_mail_remind user
    mail(to: user.email, subject: "Remind mail") do |format|
      format.html do
        render locals: {
          user: user
        }
      end
    end
  end
end
