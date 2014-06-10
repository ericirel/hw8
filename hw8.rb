###returns the text block in hashes w/ word count###
####################################################
def number_of_words(text_block)
  words = text_block.split(' ')
  frequency = Hash.new(0)
  words.each { |word| frequency[word.downcase] += 1 }
  return frequency
end

puts number_of_words("You know the first attraction I ever built when I came down south from Scotland?
It was a Flea Circus, Petticoat Lane. Really quite wonderful. We had a wee trapeze, and ah, a merry-go - -a carousel - - and a seesaw.
They all moved, motorized of course, but people would swear they could see the fleas. 'I see the fleas, mummy! Can't you see the fleas?'
Clown fleas, high wire fleas, fleas on parade... But with this place, I wanted to show them something that wasn't an illusion, something
that was real, something they could see and touch. An aim not devoid of merit.
God creates dinosaurs.
God destroys dinosaurs.
God creates man.
Man destroys God.
Grant, ignoring the others, picks up the baby dinosaur, and holds it on the palm of his hand, under the incubator's heat light.
He spreads the tiny animal out on the back of his hand and delicately runs his finger over its tail, counting the vertebrae.
A look of puzzled recognition crosses his face.")

puts number_of_words("hello world hello world hello world world world world world
 hello hello. okay goodbye")

###returns the number of words from least to most used###
#########################################################
def number_of_words(text_block)
  words = text_block.split(' ')
  frequency = Hash.new(0)
  words.each { |word| frequency[word.downcase] += 1 }
  return frequency.sort_by {|_key, value| value}
end

puts number_of_words("You know the first attraction I ever built when I came down south from Scotland?
It was a Flea Circus, Petticoat Lane. Really quite wonderful. We had a wee trapeze, and ah, a merry-go - -a carousel - - and a seesaw.
They all moved, motorized of course, but people would swear they could see the fleas. 'I see the fleas, mummy! Can't you see the fleas?'
Clown fleas, high wire fleas, fleas on parade... But with this place, I wanted to show them something that wasn't an illusion, something
that was real, something they could see and touch. An aim not devoid of merit.
God creates dinosaurs.
God destroys dinosaurs.
God creates man.
Man destroys God.
Grant, ignoring the others, picks up the baby dinosaur, and holds it on the palm of his hand, under the incubator's heat light.
He spreads the tiny animal out on the back of his hand and delicately runs his finger over its tail, counting the vertebrae.
A look of puzzled recognition crosses his face.")

#this program is a little more complex than the others. I was working on the first few
#chapters of Learn Ruby the Hard way and learned how to attach files in ruby.
#Here I have a text file attached and a program that returns the number of times each word
# is used.
text_file = 'file.txt'
a_hash = Hash.new
the_file = File.open(text_file, "r")
the_file.each_line { |line|
 words = line.split
 words.each { |w|
  if a_hash.has_key?(w)
    a_hash[w] = a_hash[w] +1
  else
    a_hash[w] = 1
  end
  }
}

a_hash.sort{|a,b| a[1]<=>b[1]}.each { |word|
 puts "\"#{word[0]}\" is said #{word[1]} times"
 }

 ################################################
 ################################################
 ################################################

 text = <<JURASIC
 You know the first attraction I ever built when I came down south from Scotland?
 It was a Flea Circus, Petticoat Lane. Really quite wonderful. We had a wee trapeze, and ah, a merry-go - -a carousel - - and a seesaw.
 They all moved, motorized of course, but people would swear they could see the fleas. 'I see the fleas, mummy! Can't you see the fleas?'
 Clown fleas, high wire fleas, fleas on parade... But with this place, I wanted to show them something that wasn't an illusion, something
 that was real, something they could see and touch. An aim not devoid of merit.
 God creates dinosaurs.
 God destroys dinosaurs.
 God creates man.
 Man destroys God.
 Grant, ignoring the others, picks up the baby dinosaur, and holds it on the palm of his hand, under the incubator's heat light.
 He spreads the tiny animal out on the back of his hand and delicately runs his finger over its tail, counting the vertebrae.
 A look of puzzled recognition crosses his face.
JURASIC

puts text

text_hash = {}

#text_hash[:dino] = "Dinsosaur"
def text_analyzer(text)
text.split.each do |word|
  word = word.gsub("," "").downcase.gsub('"')
  if text_hash.has_key?(word)
  text_hash[word] += 1
else
  text_hash[word] = 1
  puts word
  end
end

most_frequent_word = text_hash.first
text_hash.each do |word|
  if word[1] > most_frequent_word[1]
    most_frequent_word = word
    end
  #puts word[0]
  #puts word[1]
  end
  most_frequent_word
end

puts most_frequent_word(text)

 ################################################
 ################################################
 ################################################


def prompt
  print "> "
end

puts "You wander a mysterious land. Are you dreaming or is real life? You
come across a fork in the road do you go (l)eft or (r)ight?"

prompt; fork = gets.chomp

if fork.downcase == "l"
  puts "You come across an abandoned house. Windows are broken, door is bearly
  on it's hidges. Press (1) or (2)"
  puts "1. Do you go inside?"
  puts "2. Do you go back the way you came?"

elsif fork.downcase == "r"
  puts "As you're walking along the side of the desolate road, you notice a figure in the distance. It's man, he's bald and is wearing old tattered clothes. He hasn't moved since seeing him. He suddenly yells: 'What is your name?!'"

prompt; name = gets.chomp

  if name == "a" || "b" || "c" || "e" || "m" || "s" || "x" || "y" || "z"
    puts "That a intaesting 'ame you got 'dare"
  else
    puts "Odd 'ame, I dun like it"

 prompt; age = gets.chomp
  puts "Hold ol' are you?"
  if age > 35
    puts "Yous a eel youngin'"
  else
    puts "Hmm, someone Aye can relaate too"

  prompt; house = gets.chomp

if house == "1"
  puts "The house seems to have been abandoned for many years. You look
  around finding nothing of interest. All of a sudden you hear a faint noise
  coming from upstairs."
elsif house == "2"
  puts "You notice a man standing along the side of the road...."
     end
   end
 end
end
