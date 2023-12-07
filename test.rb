class User
    def initialize(name, pin)
        @name = name
        @pin = pin
        @balance = 0
        @noOfAttempts = 0
    end
    def name
        @name
    end
    def pin; @pin end
    def balance; @balance end
    def noOfAttempts; @noOfAttempts end

    def set_balance(symbol, amount)
        eval("@balance #{symbol}= #{amount}")
    end

    def increment_attempts
        @noOfAttempts += 1
    end
end