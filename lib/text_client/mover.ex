defmodule TextClient.Mover do
  def make_move(game) do
    tally = Hangman.make_move(game.game_service, game.guess)
    %TextClient.State{ game | tally: tally }
  end
end
