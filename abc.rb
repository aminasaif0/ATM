class ATM
    attr_accessor :account_number, :balance, :owner_name
  
    def initialize(account_number, balance, owner_name)
      @account_number = account_number
      @balance = balance
      @owner_name = owner_name
    end
  
  
    def self.read_from_file(file_path)
      lines = File.readlines(file_path).map(&:chomp)
      account_number = lines[0].to_i
      balance = lines[1].to_f
      owner_name = lines[2]
      new(account_number, balance, owner_name)
    end
  end
  
  def display_atm(atm_instance)
    puts atm_instance
  end
  
  file_path = 'atm_data.txt'
  atm_instance = ATM.read_from_file(file_path)
  display_atm(atm_instance)
  