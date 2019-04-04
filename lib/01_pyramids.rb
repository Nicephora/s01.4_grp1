
def half_pyramid
    floors = 0
    bricks = "#"

    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
    print "> "
    user_input = gets.chomp.to_i

    while floors < user_input do floors += 1
        puts bricks
        bricks+="#"
    end
end

def full_pyramid
    floors = 0
    bricks = "#"

    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
    print "> "
    user_input = gets.chomp.to_i
    void = " " * (user_input)

    while floors < user_input do floors += 1
        puts void + bricks
        void = void.chop
        bricks += "##"
    end
end


def wtf_pyramid
    floors = 0
    bricks = "#"

    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? (impair)"
    print "> "
    user_input = gets.chomp.to_i
    void = " " * (user_input)

    while (user_input % 2 == 0)
        puts "NOP. Essaye encore (IM-PAIR)"
        print "> "
        user_input = gets.chomp.to_i
    end
    while floors < user_input do floors += 1
        if floors < (user_input / 2) + 1
            puts void + bricks
            void = void.chop
            bricks += "##"
        else
            puts void + bricks
            void += " "
            bricks = bricks.chop.chop
        end
    end
end

half_pyramid    
full_pyramid
wtf_pyramid