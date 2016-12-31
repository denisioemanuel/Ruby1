def da_boas_vindas
	puts "Bem vindo ao jogo da adivinhação."
	puts "Qual o seu nome?"
	nome = gets.strip
	puts "\n\n"
	puts "Começamos o jogo para você, #{nome}"
end

def sorteia_numero_secreto
	puts "Escolhendo um número secreto entre 0 e 200..."
	numero_secreto = 175
	puts "Escolhido... que tal adivinhar hoje nosso número secreto?"
	numero_secreto
end

def pede_um_numero chutes, tentativa, limite_de_tentativas
	puts "\n\n"
	puts "Tentativa #{tentativa.to_s}  de #{limite_de_tentativas.to_s}"
	puts "Chutes até agora: #{chutes.to_s}"
	puts "Entre com o número"
	chute = gets.strip
	puts "Será que acertou? Você chutou #{chute}"
	chute.to_i
end

def verifica_se_acertou numero_secreto, chute
	
	acertou = chute.to_i == numero_secreto

	if acertou
		puts "Acertou!\n\n"
		return true
	end
	maior = numero_secreto > chute
	
	if maior
		puts "O número escolhido e maior"
	else
		puts "O número escolhido e menor"
	end
	
	false
end

da_boas_vindas
numero_secreto = sorteia_numero_secreto
limite_de_tentativas = 5
chutes = []

for tentativa in 1.. limite_de_tentativas

	chute = pede_um_numero chutes, tentativa, limite_de_tentativas
	chutes <<  chute
	if verifica_se_acertou numero_secreto, chute
		break
	end
end