module SendPullRequest
  class Engine < Rails::Engine

    rake_tasks do
      desc "sends pull request"
      task :send_pull_request do
        Base.new.send_pull_request
      end
    end

  end
end
