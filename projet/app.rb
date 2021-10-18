require 'pry'
require 'time'
require_relative("./lib/user")
require_relative("./lib/event")
require_relative("./lib/event_crea")

halloween = Event.new("2021-10-18 16h40", 30, "session OSKUUUUR", ["truc@machin.com", "bidule@chose.fr"])

# julie = User.new("julie@email.com", 25)
# michel = User.new("michel@email.com", 52)
User.new("julie@julie.com", 35)
User.new("jean@jean.com", 23)
User.new("claude@claude.com", 75)


#find(@@all_user)

binding.pry
puts "fin du prog"
puts @@all_user[0].class



# halloween.postpone_24h(@start_date) 
# halloween.postpone_24h('start_date') 