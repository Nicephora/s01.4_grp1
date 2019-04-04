def say_hello(first_name)
    puts "Hello #{first_name}"
end

def ask_first_name
    puts "t ki"
    return first_name = gets.chomp
end

say_hello(ask_first_name)