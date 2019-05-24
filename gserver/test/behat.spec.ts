import StepsHandler from '../src/steps.handler';
import { GherkinType } from '../src/gherkin';
import { expect } from 'chai';
import { getFileContent } from '../src/util';
import 'mocha';

const settings = {
    cucumberautocomplete: {
        steps: ['/data/steps/test.steps*.js'],
        syncfeatures: '/data/features/test.feature',
        smartSnippets: true,
        stepsInvariants: true,
        strictGherkinCompletion: true,
        isBehatEnvironment: true,
        customParameters: [
            {
                parameter: '${dictionaryObject}',
                value: '([a-zA-Z0-9_-]+ dictionary|"[^"]*")'
            },
            {
                parameter: /\{a.*\}/,
                value: 'aa'
            }
        ]
    }
};

const stepsDefinitionNum = 7;
const s = new StepsHandler(__dirname, settings);

describe('gherkin words in Behat', () => {
    it('Step definiton match', () => {
    const line = 'Scenario: I am on publish page with the Catalog component configured';
    const match = 'I am on publish page with the Catalog component configured';
    expect(s.geStepDefinitionMatch(line)[1]).to.be.equals(match);
    });
});