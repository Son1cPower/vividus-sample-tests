Description: Test demoing VIVIDUS capabilities for Web Applications


Scenario: Verify VIVIDUS accessibility For Messages chat


Given I am on page with URL `https://tester.test.io/`
When I enter `negriystas@icloud.com` in field located by `By.xpath(//input[@id='user_email'])`
And I enter `WroclaW2023!@` in field located by `By.xpath(//input[@id='user_password'])`
And I click on element located by `By.xpath(//input[@name='commit'])`
And I click on element located by `By.xpath(//img[@title='test IO'])`
Then the page has the relative URL 'https://tester.test.io/'
When I click on element located by `By.cssSelector(div[aria-label='Open Intercom Messenger'])`
And I change context to element located by `By.xpath(//iframe[@name='intercom-messenger-frame'])`
Then I test accessibility:
|standard|level |elementsToIgnore|elementsToCheck|violationsToIgnore|
|WCAG2AAA|NOTICE||||
|WCAG2AA|NOTICE||||
|WCAG2A|NOTICE||||
|Section 508|NOTICE||||
