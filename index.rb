require "./class/account.rb"
require "./class/cambio.rb"

option = nil
puts "Seja bem vindo!"

while option != 0 do   
  puts '->->->->->->->-> M E N U ->->->->->->->->'
  puts "| 1 | Criar Nova conta                   |"
  puts "| 2 | Mostrar contas criadas             |"
  puts "| 3 | Adicionar valor em conta           |"
  puts "| 4 | Transferir valor para conta destino|"
  puts "| 5 | Conversor de moeda(rápido)         |"
  puts "| 0 | Sair                               |"
  puts '------------------------------------------'
  puts '> INFORME A SUA OPÇÃO -------:'
  option = gets.chomp.to_i

  system'clear'

  if option == 1    
    puts "_____________________________"
    puts "Digite seu nome"
    name = gets.chomp

    system'clear'

    account = Account.new(name).save

    def greeting(account) 
      puts "Olá #{account.name}.\n"
      puts "Algumas informações sobre sua conta: \n"
      account.information
    end
    
    greeting(account)

  elsif option == 2
    system'clear'

    accounts = Account.all

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

    account = Account.find_by_number(choice) 

    account.deposit(value) if account
    puts "Valor adicionado: $#{value} \n\n"
    puts "Valor total:" 
    puts "$#{account.balance}"
      
  elsif option == 4

    puts "Digite o número da conta destino\n"
    recipient = gets.chomp.to_i
    puts "Digite o valor que deseja enviar\n"
    value = gets.chomp.to_i
    puts "Digite o número da conta remetente"
    sender = gets.chomp.to_i
    system'clear'

    accounts = Account.all 

    account_sender = Account.find_by_number(sender)
    account_recipient = Account.find_by_number(recipient)

    account_sender.transfer_value_for(account_recipient, value)

  elsif option == 5

    cambio = Cambio.new

    cambio.selected_action
    
  elsif option == 0
    system'clear'
    puts "Até breve!"

  else 
    puts "Opção inválida!"
    puts "Tente novamente.\n"
  end 
end
