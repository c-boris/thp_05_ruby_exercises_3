def signup
  puts "Création du mot de passe"
  print "> "
  password = gets.chomp
  return password
end

def login(password)
  puts "Confirmation du mot de passe"
  print "> "
  confirmation = gets.chomp
  until confirmation == password
    puts "Mot de passe incorrect.."
    confirmation = gets.chomp
  end
end

def welcome_screen
  puts "Authentification réussie, Bienvenue !"
end

def perform
  password = signup
  login(password)
  welcome_screen
end

perform