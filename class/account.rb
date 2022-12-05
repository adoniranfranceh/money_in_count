class Account
	attr_reader :name, :balance, :number


	def initialize(name, number, balance)
		@name = name
		@number = number
		@balance = balance
		
	end
	
	def deposit(value)
		@balance = @balance + value
	end

	def withdraw(value)
		@balance = @balance - value
		
	end

  
	def information
		puts "-------------------"
		puts "Nome: #{@name}"
		puts "-------------------"
		puts "Numero da conta:"
		puts "#{@number}"
		puts "-------------------"
		puts "Saldo disponível: #{@balance}" 
		
	end
end




