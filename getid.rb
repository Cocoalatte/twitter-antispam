require 'rubygems'
require 'twitter'
require 'pp'

@client = Twitter::REST::Client.new do |config|
    config.consumer_key        = "JfnplhVMvXrLA5esgkmbSKPAe"
    config.consumer_secret     = "zZV1m7orNMEyJSYtCXkj7FReCVbePblu0q6e1YOKndsbWAQ0Jb"
    config.access_token        = "921021675101077504-Aj9QYWKD4llM1fFYtzT09mprDUCvGkR"
    config.access_token_secret = "3BxyHm00WlnYnXnI6sCZOWcv918R5Vti7LP4KeWp3c6xH"
  end
cnt = 0
pp @client.users(ARGV[0])


