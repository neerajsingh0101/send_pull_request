require "send_pull_request/version"
require "send_pull_request/railtie"

module SendPullRequest
  extend ActiveSupport::Autoload

  autoload :Base
  autoload :Git
end
