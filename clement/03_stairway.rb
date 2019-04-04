NB_TURN = 100

def downstair(stair_down)
    stair_down -= 1
    puts stair_down
    return stair_down
end

def upstair(stair_up)
    stair_up += 1
    puts stair_up
    return stair_up
end

def roll(stair)
    dice_roll = rand(6)
    case dice_roll
    when 0
        n_stair = downstair(stair)
        puts "Tu descends d'un étage"
    when 1, 2, 3
        n_stair = stair
        puts "Rien ne se passe"
    when 4, 5
        n_stair = upstair(stair)
        puts "Tu montes un étage"
    end
    return n_stair
end

def average_finish_time
    sum = 0
    all_turns = []
    NB_TURN.times do 
        play
        puts play
        all_turns << play
    end
    all_turns.each do |aturn|
        sum += aturn      
    end
    sum = sum / NB_TURN  
    puts "===============\nNB TURN  : #{NB_TURN}\nAVG TURN : #{sum}"
end

def play
    turn = 0
    stair = 0
    while stair < 10
        turn += 1
        stair = roll(stair)
    end
    return turn
end

average_finish_time