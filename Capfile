require 'railsless-deploy'
#load 'config/deploy'

set :application, "Personal Web Site"
set :deploy_to, "/home/ybakos/yongbakos.com/deploy"
set :deploy_via, :copy
set :repository, "build"
set :scm, :none
set :copy_compression, :gzip
set :use_sudo, false
set :domain, 'yongbakos.com'
set :user, 'ybakos'

role :web, 'yongbakos.com'

before 'deploy:update_code' do
#  run_locally 'rm -rf build/*'
  run_locally 'middleman build'
end