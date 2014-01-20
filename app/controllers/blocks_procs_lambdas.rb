require '../../app/models/library'
require '../../app/models/game'

GAMES = [
    Game.new('Contra', year: 1987, system: 'NES'),
    Game.new('Civilization', year: 1991, system: 'PC'),
    Game.new('The Legend of Zelda', year: 1986, system: 'NES'),
    Game.new('Mega Man X2', year: 1995, system: 'SNES'),
    Game.new('Super Metroid', year: 1994, system: 'SNES'),
    Game.new('Sim City 2000', year: 1993, system: 'PC'),
    Game.new('Starcraft', year: 1998, system: 'PC')
]

def one
  puts 'one'
  library = Library.new(GAMES)
  print_details = lambda do |game|
    puts "#{game.name} (#{game.system}) - #{game.year}"
  end
  library.exec_game('Contra', print_details)
end

one