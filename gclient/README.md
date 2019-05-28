# Cucumber Full Language Support
VSCode Cucumber (Gherkin) Language Support + Format + Steps/PageObjects Autocomplete Enhanced for Behat
* This version is a modified one from the original plugin for Behat users (credits to the author of the plugin, Alexander Krechik)

## This extension adds rich language support for the Cucumber (Gherkin) language to VS Code, including:
* Syntax highlight
* Basic Snippets support
* Auto-parsing of feature steps from pathes, provided in settings.json
* Autocompletion of steps
* Ontype validation for all the steps
* Definitions support for all the steps parts
* Document format support, including tables formatting
* Supporting of many spoken languages
* Gherking page objects native support

## Important extension goals are improving of steps suggestions list and minimization of user edits after step inserting:
* Sort steps suggestions by their using count
* Option to filter steps completions depending on words used for their defining
* Option to automatically change all the steps parts, that require some user action, by snippets
* Option to show several different completion variants for steps with 'or' RegEx parts (like `(a|b)`)

![](https://raw.githubusercontent.com/alexkrechik/VSCucumberAutoComplete/master/gclient/img/vscode.gif)
## How to use:
1. Open your app in vscode
2. Install cucumberautocomplete extension
3. In the opened app root create (if absent) .vscode folder with settings.json file or just run ```mkdir .vscode && touch .vscode/settings.json```
4. Add all the needed settings to the settings.json file
5. Reload app to apply all the extension changes
6. To get autocomplete working, `strings` var of `editor.quickSuggestions` setting should be set to true (because by default `string` suggestions will not appear)

### Settings example:

#### Use steps only:
```javascript
{
    "cucumberautocomplete.steps": [
        "test/features/step_definitions/*.js",
        "node_modules/qa-lib/src/step_definitions/*.js"
    ],
    "cucumberautocomplete.syncfeatures": "test/features/*feature",
    "cucumberautocomplete.strictGherkinCompletion": true
}
```

#### Using of all the parameters available:
```javascript
{
    "cucumberautocomplete.steps": [
        "test/features/step_definitions/*.js",
        "node_modules/qa-lib/src/step_definitions/*.js"
    ],
    "cucumberautocomplete.syncfeatures": "test/features/*feature",
    "cucumberautocomplete.strictGherkinCompletion": true,
    "cucumberautocomplete.strictGherkinValidation": true,
    "cucumberautocomplete.smartSnippets": true,
    "cucumberautocomplete.stepsInvariants": true,
    "cucumberautocomplete.customParameters": [
        {
            "parameter":"{ab}",
            "value":"(a|b)"
        },
        {
            "parameter":/\{a.*\}/,
            "value":"a"
        },
    ],
    "cucumberautocomplete.pages": {
        "users": "test/features/page_objects/users.storage.js",
        "pathes": "test/features/page_objects/pathes.storage.js",
        "main": "test/features/support/page_objects/main.page.js"
    },
    "cucumberautocomplete.skipDocStringsFormat": true,
    "cucumberautocomplete.formatConfOverride": {
        "And": 3,
        "But": "relative",
    },
    "cucumberautocomplete.onTypeFormat": true,
    "editor.quickSuggestions": {
        "comments": false,
        "strings": true,
        "other": true
    },
    "cucumberautocomplete.gherkinDefinitionPart": "(Given|When|Then)\\(",
    "cucumberautocomplete.stepRegExSymbol": "'"
}
```

#### for Behat use
To enable features on behat, add the this lines to configuration file .vscode/settings.json

```javascript
    "cucumberautocomplete.gherkinDefinitionPart": "(Scenario:)",
    "cucumberautocomplete.stepRegExSymbol": "."
```

For cucumberautocomplete.steps put all path of the files containing the implementation of @smartSteps
On cucumberautocomplete.syncfeatures insert the root path of the .feature files

#### Thank you
* If this plugin was helpful for you, you can give it a ★ Star on [GitHub](https://github.com/alexkrechik/VSCucumberAutoComplete)

* For Behat users, give also a star on [GitHub](https://github.com/marcosvfranco/gherkin-behat-support)