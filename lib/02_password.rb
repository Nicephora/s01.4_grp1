user_password = ""
user_password_to_verify = ""

def signup 
    puts "Définie ton mdp"
    print ">"
    user_password = gets.chomp.to_s
end

def login(user_password)
    user_password_to_verify = ""
    while (user_password_to_verify != user_password)
        puts "Vérifie ton mdp"
        print ">"
        user_password_to_verify = gets.chomp.to_s
    end
    welcome_screen
end

def welcome_screen
    puts "Much hack\nVery nsa"
end

def perform
    login(signup)
end

perform
