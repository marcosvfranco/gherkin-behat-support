@ccna
Feature: Catalog-Component
     As a Brands.com Author
     I want to allow the user to see dynamic and potentially location-aware rewards,
     so he can choose one of them to claim and continue the redemption flow

  @manual @author
  Scenario: Catalog Component - Catalog successfully available on Sidekick
    Given There is an author page created
    When I open the author page
    And I go to the SideKick
    Then I see the Catalog component

  @manual @author
  Scenario: Catalog Component - The Catalog component on the author view
    Given I dragged and dropped  the Catalog component into an available parsys
    And I see a message asking to configure the component
    When I open the component dialog
    Then I see all the fields in according to the requirement

  @manual @author
  Scenario: Catalog Component - Configure the Catalog component
    Given I am on author page with the component
    When I open the component dialog
    And I fill all fields
    Then I see the component configured

  @component-state @desktop-only
  Scenario: Catalog Component - The Catalog Program Name on publish view
    Given I access the Catalog component page with all kinds of items
    Then I see the Program Name of Catalog component input on HTML

  @component-state
  Scenario: Catalog Component - The No items Available message is displayed successfully in Publish view
     Given I am on publish page with the Catalog component configured
     Then I see the No Items Available message
 
  @component-behavior
  Scenario: Catalog Component - The Catalog component is displayed successfully with the odd number of items in Publish view
     Given I access the Catalog component page with the odd number of items
     Then I see the Catalog component displayed successfully with the odd number of items

  @component-behavior
  Scenario: Catalog Component - The Catalog component is displayed successfully with the even number of items in Publish view
     Given I access the Catalog component page with the even number of items
     Then I see the Catalog component displayed successfully with the even number of items

  @component-state @desktop-only
  Scenario: Catalog Component - The Catalog Accessibility label on publish view
     Given I access the Catalog component page with all kinds of items
     Then I see the Accessibility label of Catalog component input on HTML

  @component-behavior
  Scenario: Catalog Component - The Header and Description Item styles are displayed successfully in Publish view
     Given I still in the Catalog component page with all kinds of items
     Then I see the Header and Description Item styles to the configurations made on Author

  @component-behavior
  Scenario: Catalog Component - The Rules link redirect is displayed successfully in Publish view
     Given I access the Catalog component page with all kinds of items
     And I click on the Rules link
     Then I am redirected to the Rules URL in according to the configurations made in Author

  @component-behavior
  Scenario: Catalog Component - The Rules link style is displayed successfully in Publish view
     Given I access the Catalog component page with all kinds of items
     Then I see the Rules style in according to the configurations made in Author

  @component-behavior
  Scenario: Catalog Component - The Sign In button style is displayed successfully in Publish view when the user is unauthenticated
     Given I access the Catalog component page with all kinds of items
     Then I see the Sign In button style according to the configurations made in Author

  @component-state @desktop-only
  Scenario: Catalog Component - The Sign In button hover style is displayed successfully in Publish view when the user is unauthenticated
     Given I still in the Catalog component page with all kinds of items
     Then I see the Sign In button hover style according to the configurations made in Author

  @component-behavior
  Scenario: Catalog Component - The Claim button style is displayed successfully in Publish view when the user is authenticated
     Given I access the Catalog component page with all kinds of items
     And I login with the user ccna-webtests1 by clicking on sign in link
     Then I see the Claim button style according to the configurations made in Author

  @component-state @desktop-only
  Scenario: Catalog Component - The Claim button hover style is displayed successfully when the user is authenticated
    Given I still in the Catalog component page with all kinds of items
    And I login with the user ccna-webtests1 by clicking on sign in link
    Then I see the Claim button hover style according to the configurations made in Author

  @component-behavior
  Scenario: Catalog Component - The user can claim the Auto Redeem item when he/ she is logged in
     Given I access the Catalog component page with all kinds of items
     And I login with the user ccna-webtests1 by clicking on sign in link
     Then The user claim the Auto Redeem item

  @component-behavior
  Scenario: Catalog Component - The user can claim the Partial Redeem Address item when he/ she is logged in
     Given I access the Catalog component page with all kinds of items
     And I login with the user ccna-webtests1 by clicking on sign in link
     Then The user claim the Partial Redeem Address item

  @component-behavior
  Scenario: Catalog Component - The user can claim the Sweeps item when he/ she is logged in
     Given I access the Catalog component page with all kinds of items
     And I login with the user ccna-webtests1 by clicking on sign in link
     Then The user claim the Sweeps item

  @component-behavior
  Scenario: Catalog Component - The user can claim the Collection item when he/ she is logged in
     Given I access the Catalog component page with all kinds of items
     And I login with the user ccna-webtests1 by clicking on sign in link
     Then The user claim the Collection item

  @component-behavior
  Scenario: Catalog Component - The Default Error message appears when the user is logged in
     Given I access the Catalog component page with all kinds of items
     And I login with the user ccna-webtests1 by clicking on sign in link
     And I select the item with the default error
     Then The Default Error message appears

  @component-behavior
  Scenario: Catalog Component - The Custom Error message below the item appears when the user is logged in
     Given I access the Catalog component page with all kinds of items
     And I login with the user ccna-webtests1 by clicking on sign in link
     And I select the item with the custom error
     Then The Custom Error message appears

  @component-behavior
  Scenario: Catalog Component - The Error message on the top of component appears when the user is logged in
     Given I access the Catalog component page with all kinds of items
     And I login with the user ccna-webtests1 by clicking on sign in link
     And I select the item with the error on the top of the component
     Then The Error message on the top of the component appears 

  @component-behavior
  Scenario: Catalog Component - The item image will not appear in the Catalog page when the Suppress Item Image is checked in the Catalog dialog
    Given I am on publish page with the Catalog Component and the Suppress Item Image is checked in the dialog
    And I am not logged in
    Then I do not see the item image coming from the service
    When I login with the user ccna-webtests1 by clicking on sign in link
    Then I do not see the item image coming from the service

  @component-behavior
  Scenario: Catalog Component - The item image will appear in the Catalog page when the Suppress Item Image is unchecked in the Catalog dialog
    Given I am on publish page with the Catalog Component and the Suppress Item Image is unchecked in the dialog
    And I am not logged in
    Then I see the Catalog item image coming from the service
    When I login with the user ccna-webtests1 by clicking on sign in link
    Then I see the Catalog item image coming from the service

  @component-behavior
  Scenario: Catalog Component - The user is redirected to the Auto Redeem Custom Thank You page configured in the Catalog dialog
    Given I am on publish page with the Catalog Component configured with the Auto Redeem Custom Thank You page in the dialog
    And I login with the user ccna-webtests1 by clicking on sign in link
    When I click on Auto Redeem Item
    Then I see the Catalog Auto Redeem Custom Thank You page configured in the dialog

  @component-behavior
  Scenario: Catalog Component - The user is redirected to the Auto Redeem Thank You page configured in the Universal Configuration when there is no Auto Redeem Custom Thank You page configured in the Catalog dialog 
    Given I am on publish page with Catalog Component configured and I have not configured the Auto Redeem Custom Thank You page in the dialog
    And I login with the user ccna-webtests1 by clicking on sign in link
    When I click on Auto Redeem Item
    Then I see the Auto Redeem Thank You page configured in the Universal Configuration 

  @component-behavior
  Scenario: Catalog Component - The user is redirected to the Partial Redeem Address Custom Thank You page configured in the Catalog dialog
    Given I am on publish page with the Catalog Component configured with the Partial Redeem Address Custom Thank You page in the dialog
    And I login with the user ccna-webtests1 by clicking on sign in link
    When I click on Partial Redeem Physical Item
    Then I see the Catalog Partial Redeem Physical Custom Thank You page configured in the dialog 

  @component-behavior
  Scenario: Catalog Component - The user is redirected to the Partial Redeem adrress Thank You page configured in the Universal Configuration when there is no Partial Redeem Address Custom Thank You page configured in the Catalog dialog 
    Given I am on publish page with Catalog Component configured and I have not configured the Partial Redeem Address Custom Thank You page in the dialog
    And I login with the user ccna-webtests1 by clicking on sign in link
    When I click on Partial Redeem Physical Item
    Then I see the Partial Redeem Address Thank You page configured in the Universal Configuration

  @component-behavior
  Scenario: Catalog Component - The user is redirected to the Partial Redeem Loyalty Custom Thank You page configured in the Catalog dialog
    Given I am on publish page with the Catalog Component configured with the Partial Redeem Loyalty Custom Thank You page in the dialog
    And I login with the user ccna-webtests1 by clicking on sign in link
    When I click on Partial Redeem Loyalty Item
    Then I see the Catalog Partial Redeem Loyalty Custom Thank You page configured in the dialog 

  @component-behavior
  Scenario: Catalog Component - The user is redirected to the Partial Redeem Loyalty Thank You page configured in the Universal Configuration when there is no Partial Redeem Loyalty Custom Thank You page configured in the Catalog dialog
    Given I am on publish page with Catalog Component configured and I have not configured the Partial Redeem Loyalty Custom Thank You page in the dialog
    And I login with the user ccna-webtests1 by clicking on sign in link
    When I click on Partial Redeem Loyalty Item
    Then I see the Partial Redeem Loyalty Thank You page configured in the Universal Configuration

  @component-behavior @component-state
  Scenario: Catalog Component - The Open Modal Link is displayed successfully in Publish View
    # Open the dialog and configure the Details Modal.
    Given I access the page with the Catalog Component configured with the Suppress Item Image checked and with the Details Modal
    Then I see the Catalog Open Modal Link item
    And I see the Catalog Open Modal Link is according to the configurations
    When I click on the Open Modal Link of an item
    Then  I see the Catalog Prize Details Modal

  @component-behavior @component-state 
  Scenario: Catalog Component - Verify Item Information with Item Image inside the Prize Details Modal in Publish View
    # Open the Catalog dialog, uncheck the Supress Item Image checkbox and configure the Details Modal.
    Given I access the page with the Catalog Component configured with the Suppress Item Image unchecked and with the Details Modal
    When I click on the Open Modal Link of an item
    Then I see the Catalog Prize Details Modal
    And I see the Catalog Item Image
    And I see the Catalog Item Title is according to the configurations
    And I see the Catalog Item Description is according to the configurations

  @component-behavior @component-state
  Scenario: Catalog Component - Verify Item Information without Item Image inside the Prize Details Modal in Publish View
    # Open the Catalog dialog, check the Supress Item Image checkbox and configure the Details Modal.
    Given I access the page with the Catalog Component configured with the Suppress Item Image checked and with the Details Modal
    When I click on the Open Modal Link of an item
    Then I see the Catalog Prize Details Modal
    And I should not see the Catalog Item Image
    And I see the Catalog Item Title without image is according to the configurations
    And I see the Catalog Item Description without image is according to the configurations

  @component-behavior @component-state
  Scenario: Catalog Component - The Close Icon is displayed successfully inside the Prize Details Modal in Publish View
    # Open the dialog and configure the Details Modal.
    Given I access the page with the Catalog Component configured with the Suppress Item Image checked and with the Details Modal
    And I click on the Open Modal Link of an item
    And I see the Catalog Modal Close Button Object Id is according to the configurations
    And I see the Catalog Prize Details Modal
    Then I see the Catalog Close Icon
    And I see the Catalog Accessibility - Context Text in the Close Icon html code
    
  @component-behavior @component-state
  Scenario: Catalog Component - The Prize Details Modal is closed when user clicks on X icon
    # Open the dialog and configure the Details Modal.
    Given I access the page with the Catalog Component configured with the Suppress Item Image checked and with the Details Modal
    And I click on the Open Modal Link of an item
    And I see the Catalog Prize Details Modal
    When I click on the Catalog X icon of the Prize Details Modal
    Then I see the Catalog Prize Details Modal is closed

  @manual 
  Scenario: Catalog Component - The Prize Details Modal is closed when user clicks on Esc key
    # Open the dialog and configure the Details Modal.
    Given I access the page with the Catalog Component configured with the Suppress Item Image checked and with the Details Modal
    And I click on the Open Modal Link of an item
    And I see the Prize Details Modal
    When I click on the <Esc> key
    Then I see the Catalog Prize Details Modal is closed

  @component-behavior @component-state
  Scenario: Catalog Component - The Prize Details Modal is closed when user clicks outside the modal
    # Open the dialog and configure the Details Modal.
    Given I access the page with the Catalog Component configured with the Suppress Item Image unchecked and with the Details Modal
    And I click on the Open Modal Link of an item
    And I see the Catalog Prize Details Modal
    When I click outside the Catalog Prize Details Modal
    Then I see the Catalog Prize Details Modal is closed

  @component-behavior @component-state
  Scenario: Catalog Component - The Modal Details Accessibility Context Text is displayed successfully in Publish View
    # Open the dialog and configure the Details Modal.
    Given I access the page with the Catalog Component configured with the Suppress Item Image checked and with the Details Modal
    And I click on the Open Modal Link of an item
    Then I see the Catalog Prize Details Modal
    And I see the Modal Details Accessibility Context Text in the Catalog Component HTML code

 @component-behavior
  Scenario: Catalog Component - The user can Sign In and Claim the Auto Redeem item when he/she is not logged in
    Given I am on publish page with the Catalog component configured and not logged in
    And I am not logged in
    When I click on sing button Auto Redeem Item 
    And I enter the credentials for ccna-webtests1 user
    Then I see the Auto Redeem Thank You page configured in the Universal Configuration 
  
  @component-behavior
  Scenario: Catalog Component - Catalog - The user claims the Loyalty Gift item
    Given there is a page configured with Loyalty and Physical items to the Catalog component
    And the user logs in with the account ccna-webtests1 by clicking on sign in link
    When the user claims the Loyalty Gift item of the catalog
    Then the user is redirected from Catalog to the Loyalty Confirmation page

  @component-behavior
  Scenario: Catalog Component - Catalog - The user claims the Physical Gift item
    Given there is a page configured with Loyalty and Physical items to the Catalog component
    And the user logs in with the account ccna-webtests1 by clicking on sign in link
    When the user claims the Physical Gift item of the catalog
    Then the user is redirected from Catalog to the Physical Confirmation page

  @component-behavior
  Scenario: Catalog Component - Catalog - The user claims the Virtual Gift item
    Given there is a page configured with Virtual and Digital items to the Catalog component
    And the user logs in with the account ccna-webtests1 by clicking on sign in link
    When the user claims the Virtual item of the Catalog component
    Then the user is redirected from the Catalog to the Thank You page for the Virtual item

  @component-behavior
  Scenario: Catalog Component - Catalog - The user claims the Digital Gift item
    Given there is a page configured with Virtual and Digital items to the Catalog component
    And the user logs in with the account ccna-webtests1 by clicking on sign in link
    When the user claims the Digital item of the Catalog component
    Then the user is redirected from the Catalog to the Thank You page for the Digital item

  @component-behavior
  Scenario: Catalog Component - Catalog - The user claims the Combo Digital item
    Given there is a page configured with Combo items to the Catalog component
    And the user logs in with the account ccna-webtests1 by clicking on sign in link
    When the user claims the Combo Digital item of the Catalog component
    Then the user is redirected from the Catalog to the Thank You page for the Combo Digital item

  @component-behavior
  Scenario: Catalog Component - Catalog - The user claims the Combo Physical item
    Given there is a page configured with Combo items to the Catalog component
    And the user logs in with the account ccna-webtests1 by clicking on sign in link
    When the user claims the Combo Physical item of the Catalog component
    Then the user is redirected from the Catalog to the Thank You page for the Combo Physical item

  @component-behavior
  Scenario: Catalog Component - Catalog - The user claims the Combo Loyalty item
    Given there is a page configured with Combo items to the Catalog component
    And the user logs in with the account ccna-webtests1 by clicking on sign in link
    When the user claims the Combo Loyalty item of the Catalog component
    Then the user is redirected from the Catalog to the Thank You page for the Combo Loyalty item

  @component-behavior
  Scenario: Catalog Component - Catalog - The user claims a Combo item and loses it
    Given there is a page configured with Combo items to the Catalog component
    And the user logs in with the account ccna-webtests1 by clicking on sign in link
    When the user claims a Combo item of the Catalog component which is supposed to lose
    Then the user is redirected from the Catalog to the Thank You page losing the Combo item