Description: Test demoing VIVIDUS capabilities for Web Applications

Lifecycle:
Examples:
{transformer=FROM_LANDSCAPE}
|search-input-field |By.fieldName(q)                 |
|search-button      |By.xpath((//*[@name='btnK'])[1])|

Scenario: Verify VIVIDUS accessibility


Given I am on page with URL `https://dequeuniversity.com/demo/mars/`
When I click on element located by `By.xpath(//*[@class='add-leg'])`
And I change context to element located by `By.xpath(//input[@id="deptDate1"])`
Then I test accessibility:
|standard|level |elementsToIgnore|elementsToCheck|violationsToIgnore|
|WCAG2AAA|NOTICE||||
|WCAG2AA|NOTICE||||
|WCAG2A|NOTICE||||
|Section 508|NOTICE||||
