puts "Seja Bem Vindo ao nosso banco"
puts "_____________________________"
puts ""

puts "Digite seu primeiro nome"
nome = gets.chomp
puts "----------------"

class Conta
	attr_reader :usuario, :numero_da_conta, :saldo

	def initialize(nome, numero, valor)
		@usuario = nome
		@numero_da_conta = numero
		@saldo = valor
	end


	def informacoes
		puts "Olá #{@usuario}"
		puts ""
		puts "Algumas informações sobre sua conta:"
		puts "-------------------"
		puts "Numero da conta é:"
		puts "#{@numero_da_conta}"
		puts "-------------------"
		puts "Saldo disponível é: #{@saldo}" 
	end
end




conta = Conta.new(nome, "0001", 0.0)

conta.informacoes