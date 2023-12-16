# test/models/passenger_test.rb

require 'test_helper'

class PassengerTest < ActiveSupport::TestCase
  test "should not save passenger without a name" do
    passenger = Passenger.new
    assert_not passenger.save, "Saved the passenger without a name"
  end

  test "should not save passenger without an aircraft" do
    passenger = Passenger.new(name: "Joosh", destination: "London", gate: "54A")
    assert_not passenger.save, "Saved the passenger without an aircraft"
  end

  test "should not save passenger without a destination" do
    passenger = Passenger.new(name: "Joosh", aircraft: "Ryanair", gate: "54A")
    assert_not passenger.save, "Saved the passenger without a destination"
  end

  test "should not save passenger without a gate" do
    passenger = Passenger.new(name: "Joosh", aircraft: "Ryanair", destination: "London")
    assert_not passenger.save, "Saved the passenger without a gate"
  end

  test "should not save passenger without checking in" do
    passenger = Passenger.new(
      name: "Joosh",
      aircraft: "Ryanair",
      destination: "London",
      gate: "54A",
      checkIn: false
    )
    assert_not passenger.save, "Saved the passenger without checking in"
  end

  test "should save passenger with all required attributes and checking in" do
    passenger = Passenger.new(
      name: "Joosh",
      aircraft: "Ryanair",
      destination: "London",
      gate: "54A",
      checkIn: true
    )
    assert passenger.save, "Failed to save passenger with all required attributes and checking in"
  end
end
