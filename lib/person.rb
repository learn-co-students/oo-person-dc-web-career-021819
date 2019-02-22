  # your code goes here
  # get paid/receive payments
  # take a bath
  # call a friend
  # start a conversation
  # state if they are happy and/or clean

  class Person
  # First you need to create a person class that is initialized with a name that cannot be changed.
   attr_accessor :bank_account
   attr_reader :name, :happiness, :hygiene

  # Each instance of class Personshould be able to remember their name
   def initialize(name)
     @name = name
  # Each instance of class Person should start with $25 in their bank accounts
     @bank_account = 25
  # Each instance of class Person should start with eight happiness points
     @happiness = 8
  # Each instance of class Person should start with eight hygiene points
     @hygiene = 8
   end


   def happiness=(new_value)
     @happiness = new_value
     if @happiness > 10
        @happiness = 10
     elsif @happiness < 0
        @happiness = 0
     end
  @happiness
   end
   # The happiness and hygiene points should be able to change,
   # however the maximum and minimum points for both happiness
   # and hygiene should be 10 and 0 respectively
   def hygiene=(new_value)
     @hygiene = new_value
     if @hygiene > 10
       @hygiene = 10
     elsif @hygiene < 0
       @hygiene = 0
     end
     @hygiene
   end

   def happy?
     @happiness > 7
   end

   def clean?
     @hygiene > 7
   end

   def get_paid(salary)
     @bank_account += salary
     return “all about the benjamins”
   end

   def take_bath
     self.hygiene=(self.hygiene + 4)
     # self.hygiene += 4

     return "♪ Rub-a-dub just relaxing in the tub ♫"
   end

   def work_out
     self.happiness += 2
     self.hygiene -= 3
     return “♪ another one bites the dust ♫”
   end

   def call_friend(friend)
     self.happiness += 3
     friend.happiness += 3
     return “Hi #{friend.name}! It’s #{name}. How are you?”
   end

   def start_conversation(person,topic)
       if topic == “politics”
         self.happiness -= 2
         person.happiness -= 2
       return “blah blah partisan blah lobbyist”
     elsif topic == “weather”
         self.happiness += 1
         person.happiness += 1
       return “blah blah sun blah rain”
     else
       return “blah blah blah blah blah”

   end
  end

  end
