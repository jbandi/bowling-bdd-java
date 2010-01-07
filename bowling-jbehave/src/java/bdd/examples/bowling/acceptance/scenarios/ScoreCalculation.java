package bdd.examples.bowling.acceptance.scenarios;

import org.jbehave.scenario.PropertyBasedConfiguration;
import org.jbehave.scenario.JUnitScenario;
import org.jbehave.scenario.parser.PatternScenarioParser;
import org.jbehave.scenario.parser.ClasspathScenarioDefiner;
import org.jbehave.scenario.parser.UnderscoredCamelCaseResolver;
import org.jbehave.scenario.reporters.PrintStreamScenarioReporter;
import org.jbehave.scenario.reporters.ScenarioReporter;

import bdd.examples.bowling.acceptance.BowlingSteps;


public class ScoreCalculation extends JUnitScenario {

    public ScoreCalculation() {
        super(new PropertyBasedConfiguration() {
            @Override
            public ClasspathScenarioDefiner forDefiningScenarios() {
                return new ClasspathScenarioDefiner(new UnderscoredCamelCaseResolver(".scenario"), new PatternScenarioParser(this));
            }
            @Override
            public ScenarioReporter forReportingScenarios() {
                return new PrintStreamScenarioReporter();
            }
        });
        addSteps(new BowlingSteps());
    }
}
