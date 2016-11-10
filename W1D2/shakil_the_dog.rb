def shakil_the_dog
  print "Say a command to Shakil: "
  command = gets.chomp.downcase

  case command
  when ""
    puts "woof"
  when "woof"
    puts "WOOF WOOF WOOF"
  when "Shakil STOP!" || "shakil stop"
    puts "..."
  when "meow"
    puts "woof woof woof woof woof"
  when command.include?("treat")
    puts "Good boy!"
  when "go away"
    puts "Shakil leaves the room"
  else
    puts "This dog is awesome!"
  end
end
 
# Run our method
shakil_the_dog


# If you say anything to him, he will just bark back once ("woof"), except:

# If you pretend to be a dog and bark ("woof") at him, he will go a bit nuts and woof back at you three times, pretty loudly: "WOOF WOOF WOOF"
# If you explicitly use his name and tell him to stop (either "shakil stop" or "Shakil STOP!") he will not respond back with a bark (enjoy your moment of peace)
# If you pretend to be a cat and "meow" at him, he will go berserk and woof back at you five times: "woof woof woof woof woof"
# If you say anything else but with the word "treat" thrown into the mix, he won’t bark back, thinking he’ll be getting a treat
# If you say "go away" he manages to actually leave you alone by leaving the room.

