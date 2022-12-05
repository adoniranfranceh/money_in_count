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
	puts "4- Transferir valor para conta destino"
	puts "0- Sair"
	option = gets.chomp.to_i

	system'clear'

	if option == 1    
		puts "_____________________________"
		puts "Digite seu nome"
		name = gets.chomp
		puts "----------------"

		system'clear'
		if accounts.any?
	 		number = accounts.last.number + 1
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

  	accounts.each do |account|
  		puts "**********************************"
  		account.information
  	end

  	
  		
  elsif option == 3
  	puts "Digite o número da conta que deseja efetuar o deposito"
		choice = gets.chomp.to_i
		puts "------------------------------------------------------"
		puts "Digite o valor que deseja enviar"
		value = gets.chomp.to_i

	  system'clear'


  	accounts.each do |account|
    	if choice == account.number
    		account.deposit(value)
				puts "Valor adicionado: $#{value}"
				puts 
				puts 
				puts "Valor total:" 
				puts "$#{account.balance}"
				

			end
  	end

  elsif option == 4

  	puts "Digite o número da conta destino"
  	recipient = gets.chomp.to_i
  	puts
  	puts "Digite o valor que deseja enviar"
  	value = gets.chomp.to_i
  	puts
  	puts "Digite o número da conta remetente"
  	sender = gets.chomp.to_i
  	

  	if account.balance > value
  	
	  	accounts.each do |account|
	  		if sender == account.number
	  			account.withdraw(value)
				end
			end
				
	  	accounts.each do |account|	
				if recipient == account.number
	  			account.deposit(value)
	  			puts "Valor adicionado: $#{value}"
					puts 
				end
	  	end
	  else
	  	puts "VALOR INDISPONÍVEL!"
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

