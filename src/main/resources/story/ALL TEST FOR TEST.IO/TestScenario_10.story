Description: Test demoing VIVIDUS capabilities for Web Applications


Scenario: Verify VIVIDUS accessibility For Settings > Skills & Experience


Given I am on page with URL `https://tester.test.io/`
When I enter `xxxxx` in field located by `By.xpath(//input[@id='user_email'])`
And I enter `xxxxx` in field located by `By.xpath(//input[@id='user_password'])`
And I click on element located by `By.xpath(//input[@name='commit'])`
And I click on element located by `By.xpath(//img[@title='test IO'])`
Then the page has the relative URL 'https://tester.test.io/'
When I click on element located by `By.cssSelector(a[class='testio-nav-item hidden-xs-down pb-0'] span[class='icon icon-cog mr-0'])`
And I click on element located by `By.cssSelector(a[href='/account/skills'])`
Then I test accessibility:
|standard|level |elementsToIgnore|elementsToCheck|violationsToIgnore|
|WCAG2AAA|NOTICE|By.cssSelector(#top-nav-bar), By.cssSelector(#main-sidebar)|||
|WCAG2AA|NOTICE|By.cssSelector(#top-nav-bar), By.cssSelector(#main-sidebar)|||
|WCAG2A|NOTICE|By.cssSelector(#top-nav-bar), By.cssSelector(#main-sidebar)|||
|Section 508|NOTICE|By.cssSelector(#top-nav-bar), By.cssSelector(#main-sidebar)|||
