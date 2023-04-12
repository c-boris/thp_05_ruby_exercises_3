def play_game
  position = 0
  num_turns = 0

  while position < 10 do
    dice = rand(1..6)

    if dice == 1
      position -= 1
      puts "Vous descendez d'une marche, vous êtes maintenant à la marche #{position}"
    elsif dice == 2 || dice == 3 || dice == 4
      puts "Vous restez sur la même marche, vous êtes toujours à la marche #{position}"
    else
      position += 1
      puts "Bravo, vous avancez d'une marche, vous êtes maintenant à la marche #{position}"
    end

    num_turns += 1
  end

  puts "Bravo, vous avez gagné en #{num_turns} tours !"
  return num_turns
end

def average_finish_time(num_simulations)
  total_turns = 0

  num_simulations.times do
    turns = play_game
    total_turns += turns
  end

  return total_turns.to_f / num_simulations
end

puts "Bienvenue au jeu de l'escalier !"

# Jouer une partie pour tester le jeu
num_turns = play_game
puts "Il vous a fallu #{num_turns} tours pour gagner le jeu."

# Simuler 100 parties et afficher le nombre de tours moyen
avg_turns = average_finish_time(100)
puts "En moyenne, il faut #{avg_turns} tours pour gagner le jeu."