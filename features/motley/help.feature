Feature: motley help
  You can utilize this tool to initialize a new command suite, initialize an
  individual command or command group, build the current suite as a gem, or
  even setup your suite gem to be bundled using the appropriate versioned gem file.


  Scenario: As a user, I must be able to view a help message.
    When I run the command %> motley help.
    Then I should see a "Usage:" section.
    And I should see an "Options:" section.
    And I should see a "Description:" section.
    And I should see a "Examples:" section.
    And the command should exit successfully.
