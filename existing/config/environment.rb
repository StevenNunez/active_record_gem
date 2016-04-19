require 'bundler'
Bundler.require

# DB = SQLite3::Database.new('db/development.db')
ActiveRecord::Base.establish_connection(
  database: 'db/development.db',
  adapter: 'sqlite3'
)

$: << '.'
Dir["app/models/*.rb"].each {|f| require f}
