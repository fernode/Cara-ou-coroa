def quantas_vezes_de_jogo
    puts "Quantas vezes voce deseja jogar a moeda?"
    quantidade_jogo = gets.strip
    puts "\n\n\n"
    return quantidade_jogo
end

def seleciona_lado_moeda()
    moeda = rand(10);
    return moeda
end

def salva_lados()
    inicio = 0
    quantidade_jogo = quantas_vezes_de_jogo.to_i
    lado_moeda = []
    cara = 0
    coroa = 0
    while inicio < quantidade_jogo
        moeda = seleciona_lado_moeda
        lado_moeda[inicio] = moeda
        arquivo = File.write "lados.txt", lado_moeda
        
        if lado_moeda[inicio] % 2 == 0
            cara += 1
        else
            coroa += 1
        end
        inicio += 1
    end
    puts "A quantidade de cara foi #{cara} \n a quantidade de coroa foi #{coroa}"
end
lados = salva_lados
puts lados