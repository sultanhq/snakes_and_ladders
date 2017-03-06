class Game
  attr_reader :player, :board, :die
  def initialize(player, board, die)
    @player = player
    @board = board
    @die = die
  end

  def start_game(player)
    @board.place_new_player(player)
  end

  def roll_die(player)
    roll = @die.roll
    @board.move_player(player, roll)
  end

end
