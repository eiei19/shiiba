require 'aws/ses'
ActionMailer::Base.add_delivery_method :ses, AWS::SES::Base,
  :access_key_id     => Rails.application.secrets.ses["access_key"],
  :secret_access_key => Rails.application.secrets.ses["secret_access_key"]