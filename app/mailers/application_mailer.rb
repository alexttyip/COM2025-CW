class ApplicationMailer < ActionMailer::Base
  default from: 'info@workouttracker.com', to: 'info@workouttracker.com'
  layout 'mailer'
end
