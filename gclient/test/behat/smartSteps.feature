Feature: Catalog-Component

@smartStep
Scenario: I am on publish page with the Catalog component configured
    Given I refresh the browser session
    And I am on "${site_url}/${catalog_page_url}"
    And I wait at most 10 seconds until "${content_loaded}"

@smartStep
Scenario: I see the Program Name of Catalog component input on HTML
    And I wait at most 10 seconds until "${catalog_component}" appears
    Then I should see "catalog-teste" in the "impressionregister" of the "${catalog_component}" element

@smartStep
Scenario: I see the No Items Available message
    And I wait at most 30 seconds until "${catalog_no_items_message}" appears
    Then the "${catalog_no_items_message}" element should contain "No prizes available now. Please try again.-test"
    Then I should see "text-align: center;" in the "style" of the "${catalog_no_items_message}" element

@smartStep
Scenario: I access the Catalog component page with the odd number of items
    Given I refresh the browser session
    And I am on "${site_url}/${catalog_url_odd_items}"
    And I wait at most 10 seconds until "${content_loaded}"

@smartStep
Scenario: I see the Catalog component displayed successfully with the odd number of items
    And I wait at most 10 seconds until "${content_loaded}"
    Then I set the visual checkpoint "catalog_odd_number_items" ignoring the elements:
    | #header |

@smartStep
Scenario: I access the Catalog component page with the even number of items
    Given I refresh the browser session
    And I am on "${site_url}/${catalog_url_even_items}"
    And I wait at most 10 seconds until "${content_loaded}"

@smartStep
Scenario: I see the Catalog component displayed successfully with the even number of items
    And I wait at most 10 seconds until "${content_loaded}"
    Then I set the visual checkpoint "catalog_even_number_items" ignoring the elements:
    | #header |

@smartStep
Scenario: I see the Accessibility label of Catalog component input on HTML
    Then I should see "You can choose one of the items below.-teste" in the "aria-label" of the "${catalog_component}" element
    And I should see "item 1 alt" in the "aria-label" of the "${catalog_item_image}" element
    And I click on "${catalog_modal_link_item}"
    And I wait at most 10 seconds until "$('.item-image-modal')[0].alt == 'item 1 alt'"

@smartStep
Scenario: I access the Catalog component page with all kinds of items
    Given I refresh the browser session
    And I am on "${site_url}/${catalog_url_all_kinds_items}"
    And I wait at most 10 seconds until "${content_loaded}"

@smartStep
Scenario: I still in the Catalog component page with all kinds of items
    Given I refresh the browser session
    And I am on "${site_url}/${catalog_url_all_kinds_items}"

@smartStep
Scenario: I see the Header and Description Item styles to the configurations made on Author
    Then I should see "background-color: rgb(255, 255, 255);" in the "style" of the "${catalog_component}" element
    And the "(${catalog_header}//p)[1]" element should contain "THANKS FOR SCANNING"
    And the "(${catalog_header}//p)[2]" element should contain "Selected 1 of 8"
    And I should see "font-size: 18px;" in the "style" of the "${catalog_header}" element
    And I should see "font-size: 12px;" in the "style" of the "${catalog_item_description}" element
    And I should see "color: rgb(0, 0, 0);" in the "style" of the "${catalog_item_description}" element

@smartStep
Scenario: I click on the Rules link
    When I click on "${catalog_rules_link}"

@smartStep
Scenario: I am redirected to the Rules URL in according to the configurations made in Author
    Then I wait at most 10 seconds until "window.location.href.indexOf('${url_rules}') > -1"

@smartStep
Scenario: I see the Rules style in according to the configurations made in Author
    Then I should see "See rules" in the "${catalog_rules}/p" element
    And I should see "font-size: 12px;" in the "style" of the "${catalog_rules}" element
    And I should see "color: #333333;" in the "style" of the "${catalog_rules_link}" element
    And I should see "object-id-rules" in the "data-object-id" of the "${catalog_rules_link}" element
    And I should see "_self" in the "target" of the "${catalog_rules_link}" element

@smartStep
Scenario: I see the Sign In button style according to the configurations made in Author
    Then the "${catalog_sign_in_button}" element should contain "SIGN IN"
    And I should see "Sign in button COLLECTION" in the "aria-label" of the "${catalog_sign_in_button}" element
    And I should see "action-component-cta-1" in the "data-object-id" of the "${catalog_sign_in_button}" element
    And I hover over "${1koid_signin_link}"
    And I should see "color: rgb(255, 255, 255);" in the "style" of the "${catalog_sign_in_button}" element
    And I should see "background-color: rgb(0, 0, 0);" in the "style" of the "${catalog_sign_in_button}" element
    And I should see "font-size: 14px;" in the "style" of the "${catalog_sign_in_button}" element
    And I should see "border-radius: 3px;" in the "style" of the "${catalog_sign_in_button}" element    
    And I should see "padding: 5px;" in the "style" of the "${catalog_sign_in_button}" element
    And I take a screenshot as evidence named catalog_TC12

@smartStep
Scenario: I see the Sign In button hover style according to the configurations made in Author
    And I wait at most 10 seconds until "${catalog_sign_in_button}" appears
    When I hover over "${catalog_sign_in_button}"
    #This will return true when the element recieve hover
    Then I wait at most 10 seconds until "$('redemption-catalog sign-in button')[0].style.cssText.indexOf('color: rgb(214, 214, 214)') > 0"
    And I should see "background-color: rgb(31, 31, 31);" in the "style" of the "${catalog_sign_in_button}" element

@smartStep
Scenario: I see the Claim button style according to the configurations made in Author
    And I wait at most 10 seconds until "${catalog_auto_redeemed_item}" appears
    Then the "${catalog_auto_redeemed_item}" element should contain "CLAIM"
    And I should see "Claim button. AUTO_REDEEMED" in the "aria-label" of the "${catalog_auto_redeemed_item}" element
    And I should see "action-component-cta-33333" in the "data-object-id" of the "${catalog_auto_redeemed_item}" element
    And I should see "color: rgb(255, 255, 255);" in the "style" of the "${catalog_auto_redeemed_item}" element
    And I should see "background-color: rgb(0, 0, 0);" in the "style" of the "${catalog_auto_redeemed_item}" element
    And I should see "font-size: 14px;" in the "style" of the "${catalog_auto_redeemed_item}" element
    And I should see "border-radius: 3px;" in the "style" of the "${catalog_auto_redeemed_item}" element
    And I should see "padding: 5px;" in the "style" of the "${catalog_auto_redeemed_item}" element

@smartStep
Scenario: I see the Claim button hover style according to the configurations made in Author
    When I hover over "${catalog_partially_redeemed_loyalty_item}"      
    Then I should see "color: rgb(214, 214, 214);" in the "style" of the "${catalog_partially_redeemed_loyalty_item}" element
    And I should see "background-color: rgb(31, 31, 31);" in the "style" of the "${catalog_partially_redeemed_loyalty_item}" element

@smartStep
Scenario: The user claim the Auto Redeem item
    And I wait at most 10 seconds until "${catalog_auto_redeemed_item}" appears
    When I click on "${catalog_auto_redeemed_item}"
    Then I wait at most 10 seconds until "window.location.href.indexOf('${catalog_url_thank_you_auto_redeem}'+'/?id=33333') > -1"
    And I take a screenshot as evidence named catalog_TC16

@smartStep
Scenario: The user claim the Partial Redeem Address item
    And I wait at most 10 seconds until "${catalog_partially_redeemed_loyalty_item}" appears
    When I click on "${catalog_partially_redeemed_loyalty_item}"
    Then I wait at most 10 seconds until "window.location.href.indexOf('${catalog_url_thank_you_partial_loyalty}'+'/?id=11111&orderId=1111111111') > -1"

@smartStep
Scenario: The user claim the Sweeps item
    And I wait at most 10 seconds until "${catalog_sweepstakes_item}" appears
    When I click on "${catalog_sweepstakes_item}"
    Then I wait at most 10 seconds until "window.location.href.indexOf('${catalog_url_thank_you_auto_redeem}'+'/?id=44444') > -1"

@smartStep
Scenario: The user claim the Collection item
    And I wait at most 10 seconds until "${catalog_collection_item}" appears
    When I click on "${catalog_collection_item}"
    Then I wait at most 10 seconds until "window.location.href.indexOf('${url_codeEntries}'+'/?id=1') > -1"

@smartStep
Scenario: I select the item with the default error
    And I wait at most 10 seconds until "${catalog_item_with_default_error}" appears
    When I click on "${catalog_item_with_default_error}"

@smartStep
Scenario: The Default Error message appears
    And I wait at most 10 seconds until "${catalog_default_error}" appears
    Then the "${catalog_default_error}/p" element should contain "DEFAULT_ERROR - ITEM ERROR"
    And I should see "font-size: 15px;" in the "style" of the "${catalog_default_error}" element

@smartStep
Scenario: I select the item with the custom error
    And I wait at most 10 seconds until "${catalog_item_with_custom_error_1001}" appears
    When I click on "${catalog_item_with_custom_error_1001}"

@smartStep
Scenario: The Custom Error message appears
    And I wait at most 10 seconds until "${catalog_custom_error_1001}" appears
    Then the "${catalog_custom_error_1001}/p" element should contain "CUSTOM_ERROR_INSTANT_WIN - ITEM ERROR"
    And I should see "font-size: 15px;" in the "style" of the "${catalog_custom_error_1001}" element

@smartStep
Scenario: I select the item with the error on the top of the component
    And I wait at most 10 seconds until "${catalog_item_with_custom_error_2001}" appears
    When I click on "${catalog_item_with_custom_error_2001}"

@smartStep
Scenario: The Error message on the top of the component appears
    And I wait at most 10 seconds until "${catalog_custom_error_2001}" appears
    Then the "${catalog_custom_error_2001}/p" element should contain "CUSTOM_ERROR_SWEEPS - TOP ERROR"
    And I should see "font-size: 15px;" in the "style" of the "${catalog_custom_error_2001}" element
    And I refresh the browser session

@smartStep
Scenario: I take a screenshot as evidence named catalog_TC16
    And I set the visual checkpoint "catalog_TC16" ignoring the elements:
    | #header |

@smartStep
Scenario: I take a screenshot as evidence named catalog_TC12
    And I set the visual checkpoint "catalog_TC12" ignoring the elements:
    | #header |

 @smartStep
 Scenario: I am on publish page with the Catalog Component and the Suppress Item Image is checked in the dialog
    Given I refresh the browser session
    And I am on "${site_url}/${catalog_withoutimages_page_url}"
    And I wait at most 10 seconds until "${content_loaded}"
 
 @smartStep
 Scenario: I do not see the item image coming from the service
    Then I should not see an "${catalog_item_image}" element
    And I set the visual checkpoint "Catalog_without_image[TC23]"
    
  @smartStep
 Scenario: I am on publish page with the Catalog Component and the Suppress Item Image is unchecked in the dialog
    Given I refresh the browser session
    And I am on "${site_url}/${catalog_withimages_page_url}"
    And I wait at most 10 seconds until "${content_loaded}"
 
 @smartStep
 Scenario: I see the Catalog item image coming from the service
    And I wait at most 10 seconds until "${catalog_item_image}" appears
    Then I should see an "${catalog_item_image}" element
    And I set the visual checkpoint "Catalog_with_image[TC24]"
 
 @smartStep
 Scenario: I am on publish page with the Catalog Component configured with the Auto Redeem Custom Thank You page in the dialog
    Given I refresh the browser session
    And I am on "${site_url}/${catalog_custom_thankyou}"
    And I wait at most 10 seconds until "${content_loaded}"
 
 @smartStep
 Scenario: I click on sing button Auto Redeem Item 
    Then I click on "${catalog_sign_in_button_auto_redeem}"
  
  @smartStep
 Scenario: I see the Catalog Auto Redeem Custom Thank You page configured in the dialog
    Then I wait at most 20 seconds until "window.location.href.indexOf('${catalog_custom_auto_redeem_thankyou}'+'/?id=33333') > -1"
    
 @smartStep
 Scenario: I am on publish page with the Catalog Component configured with the Partial Redeem Address Custom Thank You page in the dialog
    Given I refresh the browser session
    And I am on "${site_url}/${catalog_custom_thankyou}"
    And I wait at most 10 seconds until "${content_loaded}"
 
 @smartStep
 Scenario: I click on Partial Redeem Physical Item
    Then I click on "${catalog_partial_redeem_physical_item}"
      
 @smartStep
 Scenario: I see the Catalog Partial Redeem Physical Custom Thank You page configured in the dialog 
    Then I wait at most 20 seconds until "window.location.href.indexOf('${catalog_custom_partial_redeem_address_thankyou}'+'/?id=22222') > -1"
    
 @smartStep
 Scenario: I am on publish page with the Catalog Component configured with the Partial Redeem Loyalty Custom Thank You page in the dialog
    Given I refresh the browser session
    Then I am on "${site_url}/${catalog_custom_thankyou}"
    And I wait at most 10 seconds until "${content_loaded}"
 
 @smartStep
 Scenario: I click on Partial Redeem Loyalty Item
    Then I click on "${catalog_partial_redeem_loyalty_item}"
   
 @smartStep
 Scenario: I see the Catalog Partial Redeem Loyalty Custom Thank You page configured in the dialog 
    Then I wait at most 20 seconds until "window.location.href.indexOf('${catalog_custom_partial_redeem_loyalty_thankyou}'+'/?id=11111') > -1"
     
 @smartStep
 Scenario: I am on publish page with Catalog Component configured and I have not configured the Auto Redeem Custom Thank You page in the dialog
    Given I refresh the browser session
    And I am on "${site_url}/${catalog_universal_thankyou}"
    And I wait at most 10 seconds until "${content_loaded}"
 
 @smartStep
 Scenario: I see the Auto Redeem Thank You page configured in the Universal Configuration    
    Then I wait at most 10 seconds until "window.location.href.indexOf('${catalog_url_thank_you_auto_redeem}'+'/?id=33333') > -1"
    
 @smartStep
 Scenario: I am on publish page with Catalog Component configured and I have not configured the Partial Redeem Address Custom Thank You page in the dialog
    Given I refresh the browser session
    And I am on "${site_url}/${catalog_universal_thankyou}"
    And I wait at most 10 seconds until "${content_loaded}"
 
 @smartStep
 Scenario: I see the Partial Redeem Address Thank You page configured in the Universal Configuration
    Then I wait at most 10 seconds until "window.location.href.indexOf('${catalog_url_thank_you_partial_address}'+'/?id=22222') > -1"
      
  @smartStep
 Scenario: I am on publish page with Catalog Component configured and I have not configured the Partial Redeem Loyalty Custom Thank You page in the dialog
    Given I refresh the browser session
    And I am on "${site_url}/${catalog_universal_thankyou}"
    And I wait at most 10 seconds until "${content_loaded}"
 
 @smartStep
 Scenario: I see the Partial Redeem Loyalty Thank You page configured in the Universal Configuration
    Then I wait at most 10 seconds until "window.location.href.indexOf('${catalog_url_thank_you_partial_loyalty}'+'/?id=11111') > -1"

@smartStep
Scenario: I see the Catalog Open Modal Link item
    Then I should see "PRIZE DETAILS" in the "${catalog_modal_link_item}" element
    And I set the visual checkpoint "Open_Modal_Link_TC31" ignoring the elements:
    | #header |
     
@smartStep
Scenario: I click on the Open Modal Link of an item
    And I wait at most 10 seconds until "${catalog_modal_link_item}" appears
    Then I click on "${catalog_modal_link_item}"

 @smartStep
 Scenario: I see the Catalog Modal Close Button Object Id is according to the configurations
   Then I should see "modal-close-button" in the "data-object-id" of the "${catalog_accessibility_close_icon_modal}" element
   
@smartStep
Scenario: I see the Catalog Prize Details Modal
    Then I wait at most 10 seconds until "${catalog_modal}" appears

@smartStep
Scenario: I see the Modal Details Accessibility Context Text in the Catalog Component HTML code
    Then I should see an "${catalog_accessibility_text_modal}" element

@smartStep
Scenario: I see the Catalog Open Modal Link is according to the configurations
    Then I should see "font-size: 15px;" in the "style" of the "${catalog_modal_link_item}" element
    And I should see "color: rgb(0, 0, 0);" in the "style" of the "${catalog_modal_link_item}" element

@smartStep
Scenario: I access the page with the Catalog Component configured with the Suppress Item Image unchecked and with the Details Modal
    Given I refresh the browser session
    And I am on "${site_url}/${catalog_url_details_modal_with_image}"
    And I wait at most 10 seconds until "${content_loaded}"

@smartStep
Scenario: I see the Catalog Item Image
    Then I wait at most 10 seconds until "${catalog_item_image_modal}" appears
    Then I should see an "${catalog_item_image_modal}" element
    And I set the visual checkpoint "item_image_modal_TC32" ignoring the elements:
    | #header |

@smartStep
Scenario: I see the Catalog Item Title is according to the configurations
    Then I should see "font-size: 18px;" in the "style" of the "${catalog_modal_item_title}" element
    And I should see "color: rgb(0, 0, 0)" in the "style" of the "${catalog_modal_item_title}" element

@smartStep
Scenario: I see the Catalog Item Description is according to the configurations
    Then I should see "font-size: 15px;" in the "style" of the "${catalog_modal_item_description}" element
    And I should see "color: rgb(163, 163, 163);" in the "style" of the "${catalog_modal_item_description}" element

@smartStep
Scenario: I access the page with the Catalog Component configured with the Suppress Item Image checked and with the Details Modal
    Given I refresh the browser session
    And I am on "${site_url}/${catalog_url_details_modal_without_image}"
    And I wait at most 10 seconds until "${content_loaded}"

@smartStep
Scenario: I should not see the Catalog Item Image
    Then I should not see an "${catalog_item_image_modal}" element
    And I set the visual checkpoint "without_item_image_modal_TC33" ignoring the elements:
    | #header |

 @smartStep
Scenario: I see the Catalog Item Title without image is according to the configurations
    Then I should see "font-size: 18px;" in the "style" of the "${catalog_modal_item_title}" element
    And I should see "color: rgb(0, 0, 0);" in the "style" of the "${catalog_modal_item_title}" element

@smartStep
Scenario: I see the Catalog Item Description without image is according to the configurations
    Then I should see "font-size: 15px;" in the "style" of the "${catalog_modal_item_description}" element
    And I should see "color: rgb(163, 163, 163);" in the "style" of the "${catalog_modal_item_description}" element

@smartStep
Scenario: I see the Catalog Close Icon
   Then I click on "${catalog_modal_close_icon}"

@smartStep
Scenario: I see the Catalog Accessibility - Context Text in the Close Icon html code
    Then I should see "Close the modal." in the "aria-label" of the "${catalog_accessibility_close_icon_modal}" element

@smartStep
Scenario: I click on the Catalog X icon of the Prize Details Modal
   Then I click on "${catalog_modal_close_icon}"

@smartStep
Scenario: I see the Catalog Prize Details Modal is closed
   Then I should not see an "${catalog_modal}" element

@smartStep
Scenario: I click outside the Catalog Prize Details Modal
    And I run js "$('.modal').click()"

@smartStep
Scenario: I click on sign in button of one of the items
   When I click on "${catalog_sign_in_button_auto_redeem}"

@smartStep
Scenario: I am on publish page with the Catalog component configured and not logged in
   Given I refresh the browser session
   And I am on "${site_url}/${catalog_universal_thankyou}"
   And I wait at most 10 seconds until "${content_loaded}"

@smartStep
Scenario: I click on Auto Redeem Item
  When I click on "${catalog_auto_redeem_item}"

@smartStep
Scenario: there is a page configured with Loyalty and Physical items to the Catalog component
    Given I refresh the browser session
        And I am on "${site_url}/${catalog_url_loyalty_and_physical_gift}"
        And I wait at most 10 seconds until "${content_loaded}"

@smartStep
Scenario: the user claims the Loyalty Gift item of the catalog
    When I wait at most 10 seconds until "${catalog_gift_loyalty_item}" appears
        And I click on "${catalog_gift_loyalty_item}"

@smartStep
Scenario: the user claims the Physical Gift item of the catalog
    When I wait at most 10 seconds until "${catalog_gift_physical_item}" appears
        And I click on "${catalog_gift_physical_item}"

@smartStep
Scenario: the user is redirected from Catalog to the Loyalty Confirmation page    
    Then I wait at most 10 seconds until "window.location.href.indexOf('${catalog_url_confirmation_loyalty}'+'/?id=22222') > -1"

@smartStep
Scenario: the user is redirected from Catalog to the Physical Confirmation page    
    Then I wait at most 10 seconds until "window.location.href.indexOf('${catalog_url_confirmation_physical}'+'/?id=11111') > -1"

@smartStep
Scenario: there is a page configured with Virtual and Digital items to the Catalog component
    Given I refresh the browser session
        And I am on "${site_url}/${catalog_url_digital_virtual_items}"
        And I wait at most 10 seconds until "${content_loaded}"

@smartStep
Scenario: the user claims the Digital item of the Catalog component
    When I wait at most 10 seconds until "${catalog_gift_digital_item}" appears
        And I click on "${catalog_gift_digital_item}"

@smartStep
Scenario: the user claims the Virtual item of the Catalog component
    When I wait at most 10 seconds until "${catalog_gift_virtual_item}" appears
        And I click on "${catalog_gift_virtual_item}"

@smartStep
Scenario: the user is redirected from the Catalog to the Thank You page for the Digital item
    Then I wait at most 10 seconds until "window.location.href.indexOf('${url_thank_you_auto_redeem}'+'/?id=34775') > -1"

@smartStep
Scenario: the user is redirected from the Catalog to the Thank You page for the Virtual item
    Then I wait at most 10 seconds until "window.location.href.indexOf('${url_thank_you_auto_redeem}'+'/?id=34783') > -1"

@smartStep
Scenario: there is a page configured with Combo items to the Catalog component
    Given I refresh the browser session
        And I am on "${site_url}/${catalog_url_combo_items}"
        And I wait at most 10 seconds until "${content_loaded}"

@smartStep
Scenario: the user claims the Combo Digital item of the Catalog component
    When I wait at most 10 seconds until "${catalog_combo_digital_item}" appears
        And I click on "${catalog_combo_digital_item}"

@smartStep
Scenario: the user is redirected from the Catalog to the Thank You page for the Combo Digital item
    Then I wait at most 10 seconds until "window.location.href.indexOf('${url_thank_you_auto_redeem}'+'/?id=22818') > -1"
    And I wait at most 10 seconds until "$('.combo-win').css('display') == 'block'"

@smartStep
Scenario: the user claims the Combo Physical item of the Catalog component
    When I wait at most 10 seconds until "${catalog_combo_physical_item}" appears
        And I click on "${catalog_combo_physical_item}"

@smartStep
Scenario: the user is redirected from the Catalog to the Thank You page for the Combo Physical item
    Then I wait at most 10 seconds until "window.location.href.indexOf('${url_thank_you_partial_address}'+'/?id=22817') > -1"
    And I wait at most 10 seconds until "$('.combo-win').css('display') == 'block'"

@smartStep
Scenario: the user claims the Combo Loyalty item of the Catalog component
    When I wait at most 10 seconds until "${catalog_combo_loyalty_item}" appears
        And I click on "${catalog_combo_loyalty_item}"

@smartStep
Scenario: the user is redirected from the Catalog to the Thank You page for the Combo Loyalty item
    Then I wait at most 10 seconds until "window.location.href.indexOf('${url_thank_you_partial_address_loyalty}'+'/?id=22819') > -1"
    And I wait at most 10 seconds until "$('.combo-win').css('display') == 'block'"

@smartStep
Scenario: the user claims a Combo item of the Catalog component which is supposed to lose
    When I wait at most 10 seconds until "${catalog_combo_combo_item}" appears
        And I click on "${catalog_combo_combo_item}"

@smartStep
Scenario: the user is redirected from the Catalog to the Thank You page losing the Combo item
    Then I wait at most 10 seconds until "window.location.href.indexOf('${url_thank_you_auto_redeem}'+'/?id=22820') > -1"
    And I wait at most 10 seconds until "$('.combo-loss').css('display') == 'block'"
