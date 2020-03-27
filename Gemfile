source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.3'

gem 'rails', '~> 6.0.3.2'

# Use Puma as the app server
gem 'puma', '~> 4.1'

# Use Active Model has_secure_password
gem 'bcrypt'


group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
 end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem 'rack-timeout', require: 'rack/timeout/base'
gem 'sprockets', '< 4'
gem 'sassc-rails'
gem 'execjs'
gem 'therubyracer', platforms: :ruby

group :development, :test do
  gem 'amazing_print'
  gem 'dotenv-rails'
  gem 'grade_runner', github: 'firstdraft/grade_runner'
  gem 'pry-rails'
  gem 'sqlite3', '~> 1.4.1'
  gem 'table_print'
  gem 'web_git', github: 'firstdraft/web_git', branch: 'spring2020'
end

group :development do
  gem 'annotate'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'draft_generators', github: 'firstdraft/draft_generators', branch: 'winter-2020'
end

group :test do
  gem 'capybara'
  gem 'color_namer'
  gem 'factory_bot_rails'
  gem 'rspec-rails'
  gem 'rspec-html-matchers'
  gem "selenium-webdriver"
  gem 'webmock'
end

group :production do
  gem 'pg'
end
