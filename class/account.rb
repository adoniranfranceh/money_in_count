class Account
	attr_reader :user, :account_number, :balance

	def initialize(user, account_number, balance)
		@user = user
		@account_number = account_number
		@balance = balance
	end
  
	def information
		puts "-------------------"
		puts "Nome: #{@user}"
		puts "-------------------"
		puts "Numero da conta:"
		puts "#{@account_number}"
		puts "-------------------"
		puts "Saldo disponível: #{@balance}" 
	end
end




