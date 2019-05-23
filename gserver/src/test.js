//Actually, we dont care what the symbols are before our 'Gherkin' word
        //But they shouldn't end with letter
        const startPart = '^((?:[^\'"\/]*?[^\\w])|.{0})';

        //All the steps should be declared using any gherkin keyword. We should get first 'gherkin' word
        const gherkinPart = `(Scenario|Given|When|Then|defineStep|Step|StepDefinition)`;

        //All the symbols, except of symbols, using as step start and letters, could be between gherkin word and our step
        const nonStepStartSymbols = `[^\/'"\`\\w]*?`;

        // Step part getting
        const { stepRegExSymbol } = ":"
        //Step text could be placed between '/' symbols (ex. in JS) or between quotes, like in Java
        const stepStart = stepRegExSymbol ? `(${stepRegExSymbol})` : `(\/|'|"|\`)`;
        //Our step could contain any symbols, except of our 'stepStart'. Use \3 to be sure in this
        const stepBody = stepRegExSymbol ? `([^${stepRegExSymbol}]+)` : '([^\\3]+)';
        //Step should be ended with same symbol it begins
        const stepEnd = stepRegExSymbol ? stepRegExSymbol : '\\3';

        //Our RegExp will be case-insensitive to support cases like TypeScript (...@when...)
        const r = new RegExp(startPart + gherkinPart + nonStepStartSymbols + stepStart + stepBody + stepEnd, 'i');

        console.log(r);