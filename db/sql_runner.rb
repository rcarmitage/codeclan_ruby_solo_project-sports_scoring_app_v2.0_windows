require('pg')

class SqlRunner

  def self.run( sql, values = [] )
    begin
      db = PG.connect({ dbname: 'sports_scoring_app', host: 'localhost', user: 'postgres', password: 'password' })
      db.prepare( "query", sql )
      result = db.exec_prepared( "query", values )
    ensure
      db.close() if db != nil
    end
    return result
  end

end
