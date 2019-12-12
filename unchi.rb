require 'twitter'

twitter = Twitter::REST::Client.new do |config|
    config.consumer_key        = ""
    config.consumer_secret     = ""
    config.access_token        = ""
    config.access_token_secret = ""
end
cnt = 0
twitter.follower_ids(twitter.users(ARGV[0])).each do |uids|
    twitter.block(uids)
    print uids
    puts "Blocked:".concat(uids)
    cnt = cnt + 1
end
