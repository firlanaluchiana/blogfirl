Feature: Home page

    Scenario: Viewing application's home page
        Given I am on the home page

    Scenario: Viewing application's post page
        Given all post
        When I am on the postpage
        Then I should see all post

    Scenario: Viewing application's post page
        Given there's a post titled "My first" with "Hello," body
        When I am on the postpage
        Then I should see the "My first" post
   