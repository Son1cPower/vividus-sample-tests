Description: Test demoing VIVIDUS capabilities for Web Applications

Lifecycle:
Examples:
{transformer=FROM_LANDSCAPE}
|search-input-field |By.fieldName(q)                 |
|search-button      |By.xpath((//*[@name='btnK'])[1])|

Scenario: Verify VIVIDUS accessibility


Given I am on page with URL `https://ej2.syncfusion.com/showcase/angular/appointmentplanner/#/doctors`
When I click on element located by `By.xpath(//button[contains(@class, 'e-control e-btn e-lib e-normal e-primary') and (text()='Add New Doctor')])`
And I change context to element located by `By.xpath(//div[contains(@class, 'e-dlg-content')])`
Then I test accessibility:
|standard|level |elementsToIgnore|elementsToCheck|violationsToIgnore|
|WCAG2AAA|NOTICE||||
|WCAG2AA|NOTICE||||
|WCAG2A|NOTICE||||
|Section 508|NOTICE||||
