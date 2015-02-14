require 'aws/ses'
if Rails.env.production?
  ActionMailer::Base.add_delivery_method :ses, AWS::SES::Base,
    :access_key_id     => ENV['AWS_ACCESS_KEY'],
    :secret_access_key => ENV['AWS_SECRET_ACCESS_KEY']
else
  ActionMailer::Base.add_delivery_method :ses, AWS::SES::Base,
    :access_key_id     => Rails.application.secrets.aws["access_key"],
    :secret_access_key => Rails.application.secrets.aws["secret_access_key"]
end