ACCOUNTS = []

class Account
	attr_reader :name, :balance, :number

	def initialize(name)
		@name = name
		@number = generate_number
		@balance = 0.0
		
	end
	
	def deposit(value)
		@balance = @balance + value
	end

	def withdraw(value)
		@balance = @balance - value
		
	end

	def save
		ACCOUNTS << self

		self
	end

	def generate_number
		return ACCOUNTS.last.number + 1 if ACCOUNTS.any?

		1
	end

	def self.all 
		ACCOUNTS
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
