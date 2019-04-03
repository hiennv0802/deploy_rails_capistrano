class ApplicationMailer < ActionMailer::Base
  default from: Settings.config.mailer.default_from
  layout "mailer"
end
