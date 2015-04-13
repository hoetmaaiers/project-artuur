# config valid only for current version of Capistrano
lock '3.4.0'

set :application, 'project_artuur'
set :repo_url, 'git@github.com:hoetmaaiers/project-artuur.git'

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
set :deploy_to, '~/public_html/staging'
set :deploy_via, :copy

# set :tmp_dir, "#{fetch(:home)}/tmp"
set :tmp_dir, "/home3/projego6/capistrano_tmp"

# Default value for :scm is :git
# set :scm, :git

# Default value for :format is :pretty
# set :format, :pretty

# Default value for :log_level is :debug
# set :log_level, :debug

# Default value for :pty is false
# set :pty, true
set :log_level, :debug

SSHKit.config.command_map[:bash] = "/usr/bin/bash"

# set :use_sudo, false


# Default value for :linked_files is []
# set :linked_files, fetch(:linked_files, []).push('config/database.yml', 'config/secrets.yml')

# Default value for linked_dirs is []
# set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system')

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
# set :keep_releases, 5

namespace :deploy do

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      # within release_path do
      #   execute :rake, 'cache:clear'
      # end
    end
  end

  task :start do ; end
  task :stop do ; end

  # Touch tmp/restart.txt to tell Phusion Passenger about new version
  # task :restart, :roles => :app, :except => { :no_release => true } do
  #   run "touch #{File.join(current_path, 'tmp', 'restart.txt')}"
  # end
end

# Clean-up old releases
after "deploy:restart", "deploy:cleanup"
