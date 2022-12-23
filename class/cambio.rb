require_relative "./module.rb"

    class Cambio 
      include Converter 

      def menu
        puts '->->->->-> M E N U ->->->->->'
        puts '| 1 | Real para Euro         |'
        puts '| 2 | Real para Dólar        |'
        puts '| 3 | Dólar para Real        |'
        puts '| 4 | Euro para Real         |'
        puts '------------------------------'
        puts '> INFORME A SUA OPÇÃO -------:'
        option = gets.chomp.to_i

      end

      def selected_action
        option = menu 
        if option >= 1 && option <= 4
          puts '> Informe a sua quantia:'
          my_value = gets.chomp.to_f

          case option
          when 1
            real_to_euro my_value
          when 2
            real_to_dolar my_value
          when 3
            dolar_to_real my_value
          when 4
            euro_to_real my_value
          else
            puts '>ERRO inesperado'
          end
        else
        puts '----> Opção NÃO disponível! <----'
        end
      end
    end
    