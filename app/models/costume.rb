# Create your Costume class here
# It should inherit from ActiveRecord::Base
class Costume < ActiveRecord::Base

  def self.create_table
    sql = <<-SQL
    CREATE TABLE IF NOT EXISTS costumes (
    id INTEGER PRIMARY KEY,
    name TEXT,
    price INTEGER,
    size INTEGER,
    image_url TEXT,
    )
    SQL
    ActiveRecord::Base.connection.execute(sql)
  end
end
