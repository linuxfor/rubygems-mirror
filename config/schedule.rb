# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
# set :output, "/path/to/my/cron_log.log"
#
# every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end

root = File.expand_path('../../', __FILE__)

set :output, "#{root}/log/cron.log"

every 2.hours, roles: [:app] do
  command "#{root}/bin/ruby_mirror"
end
