Feature: Demo Feature

    Scenario: Open SignUp Page
        Given I am on Appimation sign up page
        When I submit signup details

    Scenario: I submit signup without entering password again
        Given I am on Appimation sign up page
        When I submit signup details without again password