require "slack_bot_mention_resolver/version"
require "slack"

module SlackBotMentionResolver
  class Resolver
    def initialize(token)
      @client = ::Slack::Client.new(token: token)
    end

    def self_id
      @id ||= @client.auth_test['user_id']
    end

    def self_id_in_message
      "<@#{self_id}>"
    end
  end
end
