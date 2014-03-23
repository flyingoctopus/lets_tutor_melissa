# environment.rb

require 'rubygems'
require 'mysql2'
require 'active_record'
require 'yaml'

# recursively require all files in ./lib and subfolders
Dir.glob('./lib/*').each do |folder|
  Dir.global(folder +"/*.rb").each do |file|
    require file
  end
end

# tell AR what db adapter to use
ActiveRecord::Base.establish_connection(
  adapter:  'mysql2', # or 'postgresql' or 'sqlite3'
  database: '',
  username: 'DB_USER',
  password: 'DB_PASS',
  host:     'localhost'
)
