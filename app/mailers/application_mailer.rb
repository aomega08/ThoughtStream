# frozen_string_literal: true

# Abstract Mailer for shared behaviors
class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'
end
