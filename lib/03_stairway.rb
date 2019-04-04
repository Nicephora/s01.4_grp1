def die_throw
	stairs = 0
	count_number_die_throw = 0
	while stairs < 10
		die = rand(6)+1
		puts die
		count_number_die_throw += 1

		if die == 5 or die == 6
			stairs += 1 
			puts "Vous avez avancé d'un étage, vous etes à l'étage #{stairs}"

		elsif die == 1
			
			puts "Vous avez reculé d'un étage, vous etes à l'étage #{stairs}"
			if  stairs <= 1
				puts 'Pas de chance'
				
			else
				stairs -= 1
				puts "Vous avez reculé d'un étage, vous etes à l'étage #{stairs}"
			end
		
		elsif die == 2 or die == 3 or die == 4
			stairs = stairs
			puts "Vous n'avez pas bougé, vous etes à l'étage #{stairs}"
		end
	end
	puts "|| BRAVO! VOUS AVEZ GAGNE! EN #{count_number_die_throw} LANCERS ||"
	return count_number_die_throw
end	

def average_time_finish
	avg = []
 	120.times do 
 		result = die_throw
		avg << result
	end			
	puts "Votre temps moyen est de : #{(avg.sum.div(avg.size))} lignes pour gagner"
end

average_time_finish

