def wtf_pyramid
  puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? (choisis un nombre impair)"
  print "> "
  num = gets.chomp.to_i

  # On vérifie si le nombre d'étages est impair
  while num.even?
    puts "Impossible, le nombre doit être impair ! dernière chance avant l'autodestruction de ton PC"
    print "> "
    num = gets.chomp.to_i
  end

  puts "Voici la pyramide :"
  num_spaces = num / 2
  num_hashes = 1

  # Boucle pour dessiner les étages de la pyramide
  num_spaces.downto(1) do |i|
    puts " " * i + "#" * num_hashes + " " * i
    num_hashes += 2
  end
  puts "#" * num
  num_hashes -= 2
  num_spaces = 1

  num_spaces.upto(num / 2) do |i|
    puts " " * i + "#" * num_hashes + " " * i
    num_hashes -= 2
  end
end

wtf_pyramid