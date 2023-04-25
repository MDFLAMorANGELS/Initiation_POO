# lignes très pratiques qui appellent les gems du Gemfile. On verra plus tard comment s'en servir ;) - ça évite juste les "require" partout
require 'bundler'
Bundler.require

# lignes qui appellent les fichiers lib/user.rb et lib/event.rb
# comme ça, tu peux faire User.new dans ce fichier d'application. Top.
require_relative 'lib/user'
require_relative 'lib/event'

puts julie = User.new("julie@email.com", 35) #je crée un premier User
puts jean = User.new("jean@maimail.com", 22) #puis un second User
puts bert = User.new("b@gmail.com", 33)
my_event = Event.new("2019-01-13 09:00", 10, "standup quotidien", [julie, jean]) #et je les insère tous les deux dans un nouvel Event
birthday = Event.new("2019-02-22 11:00", 70, "anniversaire", [julie, jean])
meeting = WorkEvent.new("2019-01-17 09:00", 70, "réunion de travail", [julie, jean],"Paris") # je crée un WorkEvent


binding.pry
puts "end of file"
# Maintenant c'est open bar pour tester ton application. Tous les fichiers importants sont chargés
# Tu peux faire User.new, Event.new, binding.pry, User.all, etc.