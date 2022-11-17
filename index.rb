require "./class/account.rb"

option = nil
accounts = []
number = 1
balance = 0.0
puts "Seja bem vindo!"



while option != 0 do
	puts "_____________________________"
	puts "Escolha uma das opções abaixo"
	puts 
	puts "1- Criar Nova conta "
	puts "2- Mostrar contas criadas"
	puts "3- Adicionar valor em conta"
	puts "0- Sair"
	option = gets.chomp.to_i

	

	if option == 1    
		puts "_____________________________"
		puts "Digite seu nome"
		name = gets.chomp
		puts "----------------"

		system'clear'
		if accounts.any?
	 		number += 1
		end

		def greeting(name) 
			puts "Olá #{name}."
			puts 
			puts "Algumas informações sobre sua conta:"
			puts
		end

		account = Account.new(name, number, balance)
		accounts << account
		
		greeting(name)
		account.information

		

  elsif option == 2
  	system'clear'

  	puts "#{accounts}"
  	
  	accounts.each do |account|
  		puts "-----------------------"
  		puts "Nome: "
  		puts account.name
  	  puts
  		puts "Conta:" 
  		puts account.number
  		puts 

  	end
  		
  elsif option == 3

  	accounts.each do |deposit|
    	
    	puts "Digite o número da conta que deseja efetuar o deposito"
			choice = gets.chomp.to_i
			puts "------------------------------------------------------"
			puts "Digite o valor que deseja enviar"
			value = gets.chomp.to_i

		  system'clear'


    	if choice == deposit.number
    		
    		deposit.sum(value)
    		
    		
				puts "Valor adicionado: $#{value}"
				puts 
				puts 
				puts "Valor total:" 
				puts "$#{deposit.balance}"
				break

			else

				puts "conta inválida"
			end
  	end


  

  elsif option == 0
  	system'clear'
		puts "Até breve!"

	else 
		puts "Opção inválida!"
		puts "Tente novamente."
		puts
	end
	

end

