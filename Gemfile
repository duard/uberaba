source :rubygems
gem 'rails', '3.2.11'

gem 'inherited_resources'
gem 'simple_form'
gem 'devise'
gem 'cancan'
gem 'RedCloth', :require => 'redcloth'

group :development, :test do
  gem 'mysql2'
  gem 'thin'
end
group :production do
  gem 'pg'
end

group :assets do
  gem 'uglifier', '>= 1.0.3'
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  gem 'twitter-bootstrap-rails', :git => 'git://github.com/seyhunak/twitter-bootstrap-rails.git'
  gem "less-rails" #Sprockets (what Rails 3.1 uses for its asset pipeline) supports LESS
  gem "therubyracer"
  gem 'less-rails-fontawesome'

  # Add these gems
  gem 'compass-rails'
  gem 'zurb-foundation'
end

gem 'jquery-rails'


group :development do
  gem 'hash_extension'
  gem 'quiet_assets'
  gem 'hpricot'
  gem 'ruby_parser'
  gem "nifty-generators"
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'meta_request'
  # gem 'mailcatcher'
end
