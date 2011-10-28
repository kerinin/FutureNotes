Feature: Search by Tag
  @active
  Scenario: View tag#show
    Given I am on tag page 1
    Then I should see the text 'Tag 1'
    And I should see the text 'Note 1'
    And I should not see the text 'Private Note 1'
    And I should see the text 'Note 4'
    And I should not see the text 'Private Note 4'
    
  @active
  Scenario: View tag#show with different spelling
    Given I am on tag page 4
    Then I should see the text 'tag 1'
    And I should see the text 'Note 1'
    And I should not see the text 'Private Note 1'
    And I should see the text 'Note 4'
    And I should not see the text 'Private Note 4'
    
  @active
  Scenario: View tag#show as authenticated user
    Given I have authenticated from the home page
    When I am on tag page 1
    Then I should see the text 'Tag 1'
    And I should see the text 'Note 1'
    And I should see the text 'Private Note 1'
    And I should see the text 'Note 4'
    And I should see the text 'Private Note 4'

  @active
  Scenario: View tag#show as another authenticated user
    Given I am on the sign-in page
    And I login as valid user 'Alice'
    When I am on tag page 1
    Then I should see the text 'Tag 1'
    And I should see the text 'Note 1'
    And I should not see the text 'Private Note 1'
    And I should see the text 'Note 4'
    And I should not see the text 'Private Note 4'
        
  @active
  Scenario: Click tag from the home page
    Given I am on the home page
    When I click 'Tag 1'
    Then I should be redirected to tag page 1
  
  @active
  Scenario: Click tag from '/user/home'
   Given I have authenticated from the home page
   And I am on user page 1
   When I click 'Tag 1'
   Then I should be redirected to tag page 1
  
  @active
  Scenario: Click tag from note
    Given I am on note page 1
    When I click 'Tag 1'
    Then I should be redirected to tag page 1