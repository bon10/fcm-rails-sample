Fcmpush.configure do |config|
  ## for message push
  # firebase web console => project settings => service account => firebase admin sdk => generate new private key

  # pass string of path to credential file to config.json_key_io
  config.json_key_io = "#{Rails.root}/" + ENV['SERVICE_ACOUNT_PATH']

  # Or content of json key file wrapped with StringIO
  # config.json_key_io = StringIO.new('{ ... }')

  # Or set environment variables
  # ENV['GOOGLE_ACCOUNT_TYPE'] = 'service_account'
  # ENV['GOOGLE_CLIENT_ID'] = '000000000000000000000'
  # ENV['GOOGLE_CLIENT_EMAIL'] = 'xxxx@xxxx.iam.gserviceaccount.com'
  # ENV['GOOGLE_PRIVATE_KEY'] = '-----BEGIN PRIVATE KEY-----\n...\n-----END PRIVATE KEY-----\n\'

  ## for topic subscribe/unsubscribe because they use regacy auth
  # firebase web console => project settings => cloud messaging => Project credentials => Server key
  config.server_key = ENV['FCM_SERVER_KEY']
  # Or set environment variables
  # ENV['FCM_SERVER_KEY'] = 'your firebase server key'
end