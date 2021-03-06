source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0'

gem 'pg', '0.18.4' # upgraded from '0.17.1' #PostgreSQL

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

#use will_paginate to show big tables page by page
gem 'will_paginate', '~> 3.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

# gem to export to Excel
gem 'axlsx'
gem 'axlsx_rails'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

gem 'rails_12factor' #for deployment to Heroku

gem 'bootstrap-sass' #include bootstrap css and js files

# for multi-select listboxes
# https://github.com/benjamincanac/bootstrap-multiselect-rails
# http://rubygems.org/gems/bootstrap-multiselect-rails4
# demos and options: http://davidstutz.github.io/bootstrap-multiselect/
gem "bootstrap-multiselect-rails4", "~> 0.0.1"

# for datepicker
# https://github.com/Nerian/bootstrap-datepicker-rails
gem 'bootstrap-datepicker-rails'

#for uploading Excel files
gem 'roo'

group :development do
  gem 'rails_layout'  #gem to set up for bootstrap css and js http://railsapps.github.io/twitter-bootstrap-rails.html
  gem 'annotate'  #adds annotations to models, call bundle exec annotate to make it work
  gem "letter_opener"
  gem 'nokogiri'
end

group :test do
  gem "connection_pool"

  gem "poltergeist"
  gem 'capybara'
  gem 'rb-fsevent'

  #for model tests
  gem "shoulda"
  #gem "shoulda-context"
  #gem "shoulda-matchers", require: false

  #for color coding of test results
  gem 'minitest-reporters'
end

# Use unicorn as the app server
gem 'unicorn'

# Use ActiveModel has_secure_password
gem 'bcrypt-ruby', '~> 3.0.0'

ruby '2.2.4'