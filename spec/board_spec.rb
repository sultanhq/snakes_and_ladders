require 'spec_helper'
require 'board'

describe Board do
  context 'Board' do
    let(:player) { double('player') }

    subject(:board) { described_class.new }

    it 'A board can be created' do
      expect(board).to be_an_instance_of Board
    end

    it 'A board can contain a player' do
      board.add_player_to_board(player)
      expect(board.players).to include(player)
    end

    it 'A board has a size of 100' do
      expect(board.size).to eq 100
    end

    it 'A board can contain Snake starting at square 12 and ending at 2' do
      expect(board.check_for_snake(12)).to eq 2
    end
  end
end
