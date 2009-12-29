require 'java'
include_class "bdd.examples.bowling.Game"

Given /^a new bowling game$/ do
  @game = Game.new
end

When /^all of my balls are landing in the gutter$/ do
  (1..20).each do
    @game.roll(0)
  end
end

When /^all of my rolls are strikes$/ do
  (1..12).each do
    @game.roll(10)
  end
end

When /^I roll (\d+)$/ do |roll1|
  @game.roll(roll1.to_i)
end

When /^I roll (\d+) and (\d+)$/ do |roll1, roll2|
  When "I roll #{roll1}"
  And "I roll #{roll2}"
end

When /^I roll (\d+) times (\d+) and (\d+)$/ do |count, roll1, roll2|
  (1..count.to_i).each do
    @game.roll(roll1.to_i)
    @game.roll(roll2.to_i)
  end
end

When /^I roll the following series:(.*)$/ do |series|
  series.split(',').each do |val|
    @game.roll(val.to_i)
  end
end


Then /^my total score should be (\d+)$/ do |score|
  @game.score.should == score.to_i
end
