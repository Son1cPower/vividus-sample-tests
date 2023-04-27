Scenario: Start the application
Given I start mobile application
When I open side menu
When I tap on element located by `accessibilityId(menu item log in)`
Then I test accessibility:
|standard|level |elementsToIgnore|elementsToCheck|violationsToIgnore|
|WCAG2AAA|NOTICE||accessibilityId(Username input field)||
|WCAG2AA|NOTICE||accessibilityId(Password input field)||
|WCAG2A|NOTICE||accessibilityId(Login button)||
|Section 508|NOTICE||accessibilityId(Login button)||
