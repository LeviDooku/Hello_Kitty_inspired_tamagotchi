#flujo principal del juego

if ENV['RUN_IN_TERMINAL'].nil?
  system %{osascript -e 'tell application "Terminal" to do script "env RUN_IN_TERMINAL=1 ruby ~/Desktop/Hello_Kitty_Tamagochi/main.rb"' -e 'tell application "Terminal" to set bounds of front window to {0, 0, 710, 750}'}
  exit
end

require_relative 'tamagochi_class'
require 'securerandom'
require 'io/console'

def limpiar_terminal
	system("clear")
end

def reglas
	puts "\n\nRECUERDA: \n\n"
	puts "- Para alimentar a Hello Kitty presiona C\n"
	puts "- Para apagar la luz presiona L\n"

end

def generar_aleat(min, max)
	random = Random.new

	random.rand(min..max)
end

def dar_comer
	print "Introduce la acción necesaria: "
	caracter = leer_caracter

	while caracter.downcase != 'c'
		print "\n\nIntroduce la acción necesaria: "
		caracter = leer_caracter
	end

	return "Se ha recuperado del hambre"
end

def descanso
	print "\n\nIntroduce la acción necesaria: "
	caracter = leer_caracter

	while caracter.downcase != 'l'
		print "Introduce la acción necesaria: "
		caracter = leer_caracter
	end

	return "Se ha recuperado del cansancio"
end

def leer_caracter
	STDIN.getch
end

limpiar_terminal

puts "Bienvenid@ a este pequeño juego en el que podrás cuidar a Hello Kitty\n"
print "¿Cómo te llamas?: "
nombre = gets.chomp

limpiar_terminal

print "Hola, #{nombre}, ¿list@ para jugar? (S/N): "
eleccion = gets.chomp
if eleccion != 'S'
	puts "Vuelve cuando quieras! :)" 
	exit 1
else
	tamagochi = Hello_Kitty_caras.new
end

limpiar_terminal

loop do

	contador_estado = generar_aleat(2, 7)
	contador = 0

	while contador != contador_estado
		tamagochi.normal
		sleep(1.5)

		tamagochi.normal_pestañeo
		sleep(0.5)

		contador += 1

		break if contador == contador_estado
	end

	estado = generar_aleat(0, 1)

	case estado
	when 0 
		tamagochi.hambriento
		reglas
		dar_comer
		sleep(1.5)

		tamagochi.hambriento_pestañeo
		reglas
		dar_comer
		sleep(0.5)
	when 1
		tamagochi.cansado
		reglas
		descanso
		sleep(1.5)

		tamagochi.cansado_pestañeo
		reglas
		descanso
		sleep(0.5)
	end

end


	











