# your code goes here
require 'pry'
class Person
  attr_accessor :bank_account
  attr_reader :name, :happiness, :hygiene

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def self.max_min_helper(new_value)
    # return value btw 0..10
    if new_value > 10
      return 10
    elsif new_value < 0
      return 0
    else
      return new_value
    end
  end

  def happiness=(new_value)
    @happiness = Person.max_min_helper(new_value)
    # if new_value > 10
    #   @happiness = 10
    # elsif new_value < 0
    #   @happiness = 0
    # else
    #   @happiness = new_value
    # end
  end

  def hygiene=(new_value)
    @hygiene = Person.max_min_helper(new_value)
    # if new_value > 10
    #   @hygiene = 10
    # elsif new_value < 0
    #   @hygiene = 0
    # else
    #   @hygiene = new_value
    # end
  end

  def happy?
    @happiness > 7
  end

  def clean?
    @hygiene > 7
  end

  def get_paid(salary)
    @bank_account += salary
    return 'all about the benjamins'
  end

  def take_bath
    self.hygiene = @hygiene + 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    return "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    return "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == 'politics'
      self.happiness -= 2
      person.happiness -= 2
      return 'blah blah partisan blah lobbyist'
    elsif topic == 'weather'
      self.happiness += 1
      person.happiness += 1
      return 'blah blah sun blah rain'
    else
      return 'blah blah blah blah blah'
    end
  end
end
