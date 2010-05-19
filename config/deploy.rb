# Application Specific Details
set :application, "mapping_tool"
set :deploy_to,  "/var/www/public_html/#{application}"

server "organizenevada.com", :app, :web, :db, :primary => true

default_run_options[:ptr] = true # Ensure password prompt is prompt true
set :repository, 'git@organizenevada.com:mapping_tool.git' # your private/public url and user
set :scm, 'git' # scm utility name
set :branch, 'master' # remote branch
set :deploy_via, :copy # If you have public like github.com then use :remote_cache

set :user, 'obama'
set :admin_runner, 'obama'

namespace :deploy do
  task :start, :roles => :app do
    run "touch #{current_release}/tmp/restart.txt"
  end
  desc "Restart Application"    
  task :restart do
    #run "rake db:migrate --rakefile #{deploy_to}/current/Rakefile RAILS_ENV=production"
    run "rm -rf /var/www/public_html/#{application}/current/vendor/plugins/pretty_flash"
    run "ln -s /var/www/public_html/#{application}/shared/plugins/pretty_flash /var/www/public_html/#{application}/current/vendor/plugins/pretty_flash"
    run "touch #{current_release}/tmp/restart.txt"
  end

  task :stop, :roles => :app do
    # Do nothing.
  end
end

