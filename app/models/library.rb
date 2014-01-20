class Library
  attr_accessor :games

  def initialize(games)
    @games = games
  end

  def exec_game(name, action, error_handler=nil)
    game = games.detect { |game| game.name = name }
    begin
      action.call(game)
    rescue
      error_handler.call
    end
  end
end