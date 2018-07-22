require "slack_bot_mention_resolver/version"
require "slack"

module SlackBotMentionResolver
  class Resolver
    def initialize(token)
      @client = ::Slack::Client.new(token: token)
    end

    def get_self_id
      @id ||= @client.auth_test['user_id']
    end
  end
end
