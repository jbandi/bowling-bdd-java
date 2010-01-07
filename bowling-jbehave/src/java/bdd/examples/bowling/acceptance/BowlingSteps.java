package bdd.examples.bowling.acceptance;

import bdd.examples.bowling.domain.BowlingGame;
import org.jbehave.scenario.annotations.Given;
import org.jbehave.scenario.annotations.Then;
import org.jbehave.scenario.annotations.When;
import static org.junit.Assert.*;
import org.jbehave.scenario.steps.Steps;

public class BowlingSteps extends Steps  {

    BowlingGame game;

	@Given("a new bowling game")
	public void aNewBowlingGame() {
            game = new BowlingGame();
	}
	
	@When("all of my balls are landing in the gutter")
	public void allOfMyBallsAreLandingInTheGutter() {
            for (int i = 0; i < 20; i++)
                game.roll(0);
	}

	@When("all of my rolls are strikes")
	public void allOfMyRollsAreStrikes() {
	    for (int i = 0; i < 12; i++)
	        game.roll(10);
	}

	@When("I roll a single $val")
	public void oneRoll(int val) {
		game.roll(val);
	}

	@When("I roll $val1 and $val2")
	public void twoRolls(int val1, int val2) {
		game.roll(val1);
		game.roll(val2);
	}

	@When("I roll $times times $val1 and $val2")
	public void twoRolls(int times, int val1, int val2) {
		for (int i = 0; i < times; i++){
		 	game.roll(val1);
		 	game.roll(val2);
		}
	}

	@When("I roll the following series: $series")
	public void oneRoll(String series) {
		for (String roll : series.split(","))
		 	game.roll(Integer.parseInt(roll.trim()));
	}
	
	@Then("my total score should be $score")
	public void myTotalScoreShouldBe(int score) {
    	assertEquals(score, game.score());
	}
	

}
