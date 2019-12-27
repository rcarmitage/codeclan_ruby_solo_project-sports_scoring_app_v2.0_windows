require_relative('../db/sql_runner.rb')
require_relative('./team.rb')

class LeagueTable

# What does my league table need?
# There only needs to be 1 instance, users don't need to have any CRUD functionality, the League Table page needs to Read the data and display it

attr_reader :name, :played, :won, :lost, :points, :id

def initialize(options)
  @position1 = options['position1']
  @position2 = options['position2']
  @position3 = options['position3']
  @position4 = options['position4']
  @position5 = options['position5']
  @position6 = options['position6']
end

def save()
    sql = "INSERT INTO teams
    (
      position1,
      position2,
      position3,
      position4,
      position5,
      position6
    )
    VALUES
    (
      $1, $2, $3, $4, $5, $6
    )
    RETURNING id"
    values = [@position1, @position2, @position3, @position4, @position5, @position6]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
end

def self.all()
    sql = "SELECT * FROM teams"
    league_data = SqlRunner.run(sql)
    teams = map_items(team_data)
    return teams
end

# def sort_for_league_table()
#     sql = "SELECT * FROM teams ORDER BY points DESC"
#     league_table_data = SqlRunner.run(sql)
#     league_table_sorted = map_items(league_table_data)
#     return league_table_sorted
# end

end