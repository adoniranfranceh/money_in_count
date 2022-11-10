require "./class/account.rb"

option = nil
accounts = []
account_number = 0
puts "Seja bem vindo!"

while option != 0 do
	puts "_____________________________"
	puts "Escolha uma das opções abaixo"
	puts 
	puts "1- Criar Nova conta "
	puts "2- Acessar contas criadas"
	puts "0- Sair"
	option = gets.chomp.to_i

	if option == 1    
		puts "_____________________________"
		puts "Digite seu nome"
		name = gets.chomp
		puts "----------------"

		def greeting(name) 
			puts "Olá #{name}."
			puts 
			puts "Algumas informações sobre sua conta:"
			puts
		end

		account_number += 0.001
		account = Account.new(name, account_number, 0.0)
		accounts << account
		greeting(name)

		account.information

	elsif option == 0
		puts "Até breve!"

  elsif option == 2
  	puts "Contas criadas:"
  	puts "#{accounts} "
  	puts "----------------------------"
  	puts 

	else 
		puts "Opção inválida!"
		puts "Tente novamente."
		puts
	end

end