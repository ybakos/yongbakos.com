page "/music/index.html", :layout => false

set :haml, {:attr_wrapper => '"'}

configure :development do
  activate :livereload
end

configure :build do
  
end

# Deployment config (middleman-deploy)
case ENV['TARGET'].to_s.downcase
when 'production'
  activate :deploy do |deploy|
    deploy.deploy_method   = :rsync
    deploy.host            = 'yongbakos.com'
    deploy.path            = 'yongbakos.com'
  end
else
  activate :deploy do |deploy|
    deploy.deploy_method   = :rsync
    deploy.host            = 'staging.yongbakos.com'
    deploy.path            = 'staging.yongbakos.com'
  end
end

# Helpers
helpers do

  def default_title
    "Yong Bakos. Insert Coin to Play."
  end

  # Generating the active class for a particular nav bar item
  def nav_active(page_id)
    current_page.data.body_dom_id == page_id ? {:class => "active"} : {}
  end

end
