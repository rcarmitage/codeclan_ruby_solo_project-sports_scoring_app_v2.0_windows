require_relative('../db/sql_runner.rb')
require_relative('./team.rb')

class LeagueTable

# What does my league table need?
# There only needs to be 1 instance, users don't need to have any CRUD functionality, the League Table page needs to Read the data and display it

attr_reader :name, :played, :won, :lost, :points, :id

def initialize(options)
  @id = options['id'].to_i if options['id']
  @name = options['name']
  @played = options['played'] ? options['played'].to_i : 0
  @won = options['won'] ? options['won'].to_i : 0
  @lost = options['lost'] ? options['lost'].to_i : 0
  @points = options['points'] ? options['points'].to_i : 0
end

def save()
    sql = "INSERT INTO teams
    (
      name,
      played,
      won,
      lost,
      points
    )
    VALUES
    (
      $1, $2, $3, $4, $5
    )
    RETURNING id"
    values = [@name, @played, @won, @lost, @points]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
end

def self.all()
    sql = "SELECT * FROM teams"
    league_data = SqlRunner.run(sql)
    teams = map_items(team_data)
    return teams
end

def sort_for_league_table()
    sql = "SELECT * FROM teams ORDER BY points DESC"
    league_table_data = SqlRunner.run(sql)
    league_table_sorted = map_items(league_table_data)
    return league_table_sorted
end

end