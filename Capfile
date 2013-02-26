#require 'rubygems'
require 'railsless-deploy'
#load 'config/deploy'

set :application, "Teaching Web Pages"
set :deploy_to, "~/deploy"
set :deploy_via, :copy
set :repository, "build"
set :scm, :none
set :copy_compression, :gzip
set :use_sudo, false
set :domain, 'inside.mines.edu'
set :user, 'ybakos'

role :web, 'inside.mines.edu'

before 'deploy:update_code' do
#  run_locally 'rm -rf build/*'
  run_locally 'middleman build'
end