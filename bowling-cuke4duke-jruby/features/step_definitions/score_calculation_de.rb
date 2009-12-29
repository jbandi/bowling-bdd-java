require 'java'
require 'spec/expectations'
include_class "bdd.examples.bowling.Game"

Given /^eine neue Bowling Partie$/ do
  @game = Game.new
end

Wenn /^alle meine Kugeln in der Seitenrinne landen$/ do
  (1..20).each do
    @game.roll(0)
  end
end

Wenn /^ich alles Strikes werfe$/ do
  (1..12).each do
    @game.roll(10)
  end
end

Wenn /^ich (\d+) werfe$/ do |roll1|
  @game.roll(roll1.to_i)
end

Wenn /^ich (\d+) und (\d+) werfe$/ do |roll1, roll2|
  Wenn "ich #{roll1} werfe"
  Wenn "ich #{roll2} werfe"
end

Wenn /^ich (\d+) mal (\d+) und (\d+) werfe$/ do |count, roll1, roll2|
  (1..count.to_i).each do
    @game.roll(roll1.to_i)
    @game.roll(roll2.to_i)
  end
end

Wenn /^ich die folgende Serie werfe:(.*)$/ do |series|
  series.split(',').each do |val|
    @game.roll(val.to_i)
  end
end

Dann /^soll meine Puktzahl (\d+) sein$/ do |score|
  @game.score.should == score.to_i
end
