module SendPullRequest
  class Base

    attr_accessor :branch_name, :commands, :issue_number

    def initialize
      @project_name = File.basename(Dir.getwd)

      git = Git.new
      @branch_name = git.current_branch
      @issue_number = @branch_name.to_i
      @commands = []
    end

    def send_pull_request
      build_commands
      feedback_to_user
      commands.each do |cmd|
        begin
          system cmd
        rescue Exception => e
          puts e
        end
      end
    end

    private

    def build_commands
      # RUBYOPT dance is needed . more at https://github.com/carlhuda/bundler/blob/0.9.7/lib/bundler/cli.rb#L119-123
      commands << "export RUBYOPT='';hub pull-request -i #{issue_number} -b bigbinary:master -h bigbinary:#{branch_name}"
    end

    def feedback_to_user
      commands.each do |cmd|
        puts cmd
      end
    end
  end
end
