# Description:
# gets a tweet from LOUDBOT
#
# Dependencies:
# None
#
# Configuration:
# None
#
# Commands:
# ANYTHING CAPS - randomize one of the recent 50 tweets from LOUDBOT
#
# Author:
# Oren
#
loud = require 'loudbot'

module.exports = (robot) ->
  robot.hear /(^[^a-z]*[A-Z][^a-z]*$)/, (msg) ->
    loud (err, tweet) ->
      if err
        msg.send "Error"
      else
        msg.send tweet
