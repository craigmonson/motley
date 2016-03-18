Feature: motley init suite
  You can utilize this tool to initialize a new command suite.
  This will create a new motley suite in the directory ./<suite_name>,
  completely initialized as a gem, and ready to go.

  Scenario: As a user, I must be able to initialize a new suite
    When I run the command %> motley init suite <suite_name>...
    Then I should see "Initializing new suite: <suite name>..."
    And I should see a list of files and directories created.
    And I should see "Successfully initialized new suite: <suite name>."
    And the command should exit successfully.
