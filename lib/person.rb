# your code goes here
# your code goes here
require 'pry'
class Person

    attr_accessor :bank_account, :happiness, :hygiene
    attr_reader :name

    def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    def happiness
        if @happiness > 10
            @happiness = 10
        elsif @happiness < 0 
            @happiness = 0
        else
            @happiness = @happiness
        end
    end

    def hygiene
        if @hygiene > 10
            @hygiene = 10
        elsif @hygiene < 0
            @hygiene = 0
        else
            @hygiene = @hygiene
        end
    end

    def happy?
        if @happiness > 7
            return true
        else
            return false
        end
    end

    def clean?
        if @hygiene > 7
            return true
        else
            return false
        end
    end

    def get_paid(salary)
        @bank_account += salary 
        "all about the benjamins"
    end 

    def take_bath 
        @hygiene += 4
        self.hygiene= @hygiene
        '♪ Rub-a-dub just relaxing in the tub ♫'
    end 

    def work_out
        @hygiene -= 3
        self.hygiene= @hygiene
        @happiness += 2
        self.happiness= @happiness
        '♪ another one bites the dust ♫'
    end 

    def call_friend(friends_name)
        @happiness += 3
        friends_name.happiness += 3
        self.happiness= @happiness
        "Hi #{friends_name.name}! It's #{@name}. How are you?" 
    end 

    def start_conversation(friends_name,topic)
        if topic == "politics"
            self.happiness -= 2
            friends_name.happiness -= 2 
            'blah blah partisan blah lobbyist'
        elsif topic == "weather"
            self.happiness += 1
            friends_name.happiness +=1
            'blah blah sun blah rain'
        else 
            'blah blah blah blah blah'
        end 

    end 
    



end
# binding.pry
