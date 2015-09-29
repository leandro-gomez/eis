require 'spec_helper'
require_relative '../model/player'

describe "Round" do
  let(:player_1) { Player.new }
  let(:player_2) { Player.new }

  it 'expect paper beat rock' do
    player_1.rock!
    player_2.paper!
    expect(player_2).to beat(player_1)
  end

  it 'expect paper to not beat scissors' do
    player_1.paper!
    player_2.scissors!
    expect(player_1).to_not beat(player_2)
  end

  it 'expect paper to not beat paper' do
    player_1.paper!
    player_2.paper!
    expect(player_1).to_not beat(player_2)
  end

  it 'expect paper to not beat Monkey' do
    player_1.paper!
    player_2.monkey!
    expect(player_1).to_not beat(player_2)
  end

  it 'expect rock beat scissors' do
    player_1.rock!
    player_2.scissors!
    expect(player_1).to beat(player_2)
  end

  it 'expect rock to not beat mockey' do
    player_1.rock!
    player_2.monkey!
    expect(player_1).to_not beat(player_2)
  end

  it 'expect rock to not beat paper' do
    player_1.rock!
    player_2.paper!
    expect(player_1).to_not beat(player_2)
  end
end