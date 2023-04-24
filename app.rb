# lignes très pratiques qui appellent les gems du Gemfile. On verra plus tard comment s'en servir ;) - ça évite juste les "require" partout
require 'bundler'
Bundler.require

# lignes qui appellent les fichiers lib/user.rb et lib/event.rb
# comme ça, tu peux faire User.new dans ce fichier d'application. Top.
require_relative 'lib/user'
require_relative 'lib/event'
puts julie = User.new("j@gmail.com", 33)
puts hecko = User.new("h@gmail.com", 33)
puts bert = User.new("b@gmail.com", 33)
puts my_event = Event.new("2019-01-13 09:00", 10, "standup quotidien", [julie.email, bert.email])


binding.pry
puts "end of file"
# Maintenant c'est open bar pour tester ton application. Tous les fichiers importants sont chargés
# Tu peux faire User.new, Event.new, binding.pry, User.all, etc.