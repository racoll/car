## Car

This is a Ruby program to imitate the functionality of a simple car.

### Motivation

I wanted to practice my Ruby skills, specifically those of good separation of concerns, good Object Oriented Design, and effective Test Driven Development.

### Built with

- Ruby
- RSpec

### Running the tests

- run rspec from the command line

### How to use

- Open irb in the command line
  - require './lib/car.rb'
  - require './lib/garage.rb'
  - require './lib/journey.rb'

- create new instances of:
  - car = Car.new
  - garage = Garage.new
  - journey = Journey.new

- run the car!
  - car.fill_up
  - car.drive(london)
  - car.stop(manchester)
  - etc.

### To do:

- get the journey class to take care of compiling the journey
- specify the amount of fuel to add to the car
- create different journeys that have built in start and end points and these deduct a specific amount of fuel.
- create a printer class that will be responsible for displaying the state of the car
- build out the garage capabilities and range of problems that can occur and be fixed.
