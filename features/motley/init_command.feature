Feature: motley init command
  You can utilize this tool to initialize a new command suite, initialize an
  individual command or command group, build the current suite as a gem, or
  even setup your suite gem to be bundled using the appropriate versioned gem file.


  Scenario: As a user, I must be able to initialize a new command
    When I run the command %> motley init command <command_name>...
    Then I should see "Initializing <command_name>"
    And I should see "Added <command_name> to <suite_name>"
    And I should see "Successfully added command:<command_name>."
    And the command should exit successfully.
