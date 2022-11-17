class Account
	attr_reader :name, :balance, :number, :last_value_add


	def initialize(name, number, balance)
		@name = name
		@number = number
		@balance = balance
		
	end
	
	def sum(value)
		@last_value_add = value

		@balance = @balance + @last_value_add
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




