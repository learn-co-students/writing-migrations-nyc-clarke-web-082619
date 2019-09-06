class ConnectionAdapter
  attr_reader :adapter, :database

  def initialize(database, adapter="sqlite3")
    @adapter = adapter
    @database = database
  end

  def connect!
    ActiveRecord::Base.establish_connection(
      :adapter => "sqlite3",
      :database => "db/students/sqlite"
    )
  end
end