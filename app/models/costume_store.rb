# Create your CostumeStore class here
class CostumeStore < ActiveRecord::Base


  def self.create_table
    sql = <<-SQL
    CREATE TABLE IF NOT EXISTS custume_stores (
    id INTEGER PRIMARY KEY,
    name TEXT,
    location TEXT,
    costume_inventory INTEGER,
    num_of_employees INTEGER,
    still_in_business BOOLEAN,
    opening_time DATETIME,
    closing_time DATETIME,
    )
    SQL
    ActiveRecord::Base.connection.execute(sql)
  end

end
