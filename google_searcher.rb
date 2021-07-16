require 'launchy'
require 'pry'


# Si ce dernier ne rentre pas d'ARGV, le programme va lui dire comment ça marche
def check_if_user_gave_input
    abort("erreur: veuillez taper votre recherche google") if ARGV[0].empty?
end
# L'ARGV correspond à ce que l'utilisateur veut rechercher sur Google
# Le programme va récupérer l'ARGV, construire une URL à partir de l'ARGV
def get_google_search
   return google_search = ARGV.join("+")
end
# Puis le programme va ouvrir un nouvel onglet à partir de cette recherche
def open_tab(google_search)
    Launchy.open("https://www.google.com/search?q=#{google_search}")
end
# L'utilisateur rentre un ARGV à l'exécution du programme
def perform
    ARGV
    check_if_user_gave_input
    open_tab(get_google_search)
end
perform




