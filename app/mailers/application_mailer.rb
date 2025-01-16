# frozen_string_literal: true

# Основной мелер приложения
class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'
end
