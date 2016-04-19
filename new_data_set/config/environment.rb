require 'bundler'
Bundler.require

ActiveRecord::Base.establish_connection(
  database: "db/development.db",
  adapter: "sqlite3"
)

$: << '.'
Dir["app/models/*.rb"].each {|f| require f}
