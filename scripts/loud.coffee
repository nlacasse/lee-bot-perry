# Description:
#   gets a tweet from loudbot
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot loud - randomize one of the recent 100 tweets
#
# Author:
#   Oren
#
module.exports = (robot) ->
  robot.hear /(^[^a-z]*$)/, (msg) ->
   index = Math.floor(Math.random() * 99)
   msg.http("http://api.twitter.com/1/statuses/user_timeline/loudbot.json?count=100&include_rts=true")
    .get() (err, res, body) ->
      response = JSON.parse body
      if response[index]
        msg.send response[index]["text"]
      else
        msg.send "Error"
