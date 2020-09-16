# your code goes here
class Person
    attr_reader :name
    attr_accessor :bank_account, :hygiene, :happiness 

    def initialize(name)
        @name = name
        @happiness = 8
        @bank_account = 25
        @hygiene = 8
    end

    def happiness=(point)
        @happiness = point 
        if @happiness > 10 
            @happiness = 10
        elsif @happiness < 0
        @happiness = 0
        end
    end

    def hygiene=(point)
        @hygiene = point 
        if @hygiene > 10 
            @hygiene = 10
        elsif @hygiene < 0
        @hygiene = 0
        end
    end

    def clean?
        if @hygiene > 7 
            true 
        else false 
        end
    end

    def happy?
        if @happiness > 7
            true
        else false 
        end
    end

    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        self.hygiene+= 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness -= 2
            friend.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            friend.happiness += 1
            "blah blah sun blah rain"
        else 
            "blah blah blah blah blah"
        end

    end




end