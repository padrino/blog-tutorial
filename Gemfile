source 'https://rubygems.org'
ruby '2.3.4'

# Padrino supports Ruby version 1.9 and later
# ruby '2.4.1'

# Distribute your app as a gem
# gemspec

# Server requirements
# gem 'thin' # or mongrel
# gem 'trinidad', :platform => 'jruby'

# Optional JSON codec (faster performance)
# gem 'oj'

# Project requirements
gem 'rake'

# Component requirements
gem 'activesupport', '>= 3.1'
gem 'bcrypt'
gem 'sass'
gem 'haml'
gem 'sequel'

# Test requirements
gem 'rspec', :group => 'test'
gem 'rack-test', :require => 'rack/test', :group => 'test'

# Padrino Stable Gem
gem 'padrino', '0.14.1.1'

# Or Padrino Edge
# gem 'padrino', :github => 'padrino/padrino-framework'

# Or Individual Gems
gem 'builder'
# %w(core support gen helpers cache mailer admin).each do |g|
#   gem 'padrino-' + g, '0.14.1.1'
# end

group :development do
  gem 'sqlite3'
end

group :production do
  gem 'pg'
end
