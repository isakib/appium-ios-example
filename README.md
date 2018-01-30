# appium-ios-example

This framework, as it is, no longer includes the .app to test with, I have left the code as I felt that it may still be helpful to many.

Until I have another useful app to demonstrate Appium on iOS, I will leave this up.

## Assumptions...

 1. You are not 100% new to Ruby, iOS or Cucumber
 2. You have the necessary iOS tools in place and installed (i.e. XCode, Command Line Tools and some Simulators)
 3. You are aware of RVM (or similar tools)

## What this is / What's included....

 1. A well put together Appium framwork for testing iOS apps.
 2. Follows, generally, good Ruby and general automation practices.
 3. An idea of how a framework can be setup to handle a real world app.
 4. Some basic reporting, profile and device handling.
 5. A good way to see how elements can be located in Appium (I have deliberately used as many types as I could)
 6. A good example to see RSpec expectations in action.
 7. Good use of the Page Object Model
 8. Demonstrable use of the Ruby 'appium_lib'

## What this is not...

1. An all-in-one super duper framework.
2. Something that you can 100% copy over for any app (though I suspect you'd be able to use most, as is).

## Known limitations...

 - Will not handle the automatic start/stop of the Appium service.
 - Will not handle Simulator/Device 'issues'.
 - This framework will not magically resolve GPS issues.
 - Hard coded to use Appium default launch arguments.

## Want more?

Drop me an email, sherbhachu@googlemail.com for any comments, suggestions, etc.

## Instructions/Config required prior to use...

I like to use RVM to get my house in order...

1. cd into appium-ios-example/
2. rvm use ruby-2.3.0
3. rvm gemset create appium-ios-example
4. rvm gemset use appium-ios-example
5. gem install nokogiri -v '1.8.1'
6. bundle install

**Then...**

In the env.rb, set the desiredCapabilities appropriately.

## Example command...

cucumber features/basic_ios.feature -p html_report
