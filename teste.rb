class Deposit 
	attr_reader :balance, :value

	def initialize(value)
		@balance = 0
		@value = value
	end

	def respos
		soma = @balance + @value
		puts soma
	end
end

puts ""
value = gets.chomp.to_i

acc = Account.new(value)

acc.respos