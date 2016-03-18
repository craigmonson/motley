# Motley
A framework for automating stuff!

**Motley** aims to be an extensible, front end agnostic automation framework.
Write command output in markdown, and output to any format given a MotleyLogger
plugin.  Want a Thor driven front end?  Use the MotleyFrontEnd::Thor plugin.
Need to interact with a git repo?  Use the the MotleyCommandGroup::Git plugin.
Don't want to use a motley driven front end?  Just use Motley::Commander!

Use the **roady** command to generate your suite as an installable gem, or your
individual commands as a scaffold.  Don't have a gem server?  No problem!
**roady** can handle building and installing too.  Have some other automation
that needs to use roady to install your automation suite?  Just install the
Motley::Roady gem, and get all the functionality to manage a gem-server-less
setup.


## Installation
install from command line:
```bash
%> gem install motley
```

... or add to your Gemfile:
```ruby
gem 'motley'
```

### create a command

**Motley** has a robust helper command called `roady`.  You can utilize this
tool to initialize a new command suite, initialize an individual command or
command group, build the current suite as a gem, or even setup your suite gem
to be bundled using the appropriate versioned gem file.

First, you'll want to create a new command suite:
```bash
# creates a new suite: ./<suite_name>
%> roady init:suite <suite_name>
```

This will create a new motley suite in the directory `./<suite_name>`,
completely initialized as a gem, and ready to go.

Inside the suite, you can create a new command:
```bash
# creates a new command depending on the configuration inputs
%> roady init:command <command_name>
```

... or create a new step:
```bash
# create a step
%> roady init:step read_in_user_security
```

You can also namespace your steps:
```bash
# create a namespaced step
%> roady init:step security::read_in_user
```

Oh... want to add some attributes?
```bash
# create a step with 2 attributes
%> roady init:step security::read_in_user user_config:path encryption_key:string
```

If you're creating a plugin, then **roady** is your friend too:
```bash
# create a step suite plugin: ./motley_step_suite/git_plugin
%> roady init:step_suite git
```

Inside of the step suite, you can create a new step:
```bash
# create a step for the step suite
%> roady init:step git_clone
```

Steps inside of a step suite are already namespaced.  But the rest of the
command structue is the same as for a regular command suite.

## Configuration

By default, motley will use the _default.yml that is installed along with the
gem in order to set the defaults.  You can install a replacement in your
gemfile by adding a `./config/_default.yml` file.  This will completely
override the defaults.  Alternatively, you can add a `./config/_override.yml`
to simply override the default values.  More on that in the **Config Files**
section below.


