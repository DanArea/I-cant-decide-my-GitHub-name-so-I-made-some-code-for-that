Names = ['Name', 'SecondName', 'LastName', 'Segundo Apellido', 'Alias','Hobby']
Option = rand(1...20)#Yep, this is literally a D#20
case Option
when 1
   puts Names[4] + Names[2]
when 2 
   puts Names[2] + 's' + Names[4]
when 3 
   puts Names[2] + 's' + Names[5]
when 4
   puts Names[0] + Names[2]
when 5
  unless Names[2].empty? and Names[3].empty?
    puts Names[0] + Names[2].chars[0] + Names[3].chars[0]
  else
    Option.set = rand(8..20)
  end
when 6
  unless Names[0].empty? and Names[2].empty?
    puts Names[0].chars[0] + Names[2].chars[0] + 'the' + Names[5] + 'Boy'
  end
when 7
   puts Names[0].chars[0] + Names[2].chars[0] + Names[5] + 'er'
when 8..11
  Dice = rand(1..249)
  File.open('Adjectives.txt', 'r') do |adjectives|
    puts Names[0] + "the" + adjectives.readlines()[Dice]
  end
when 12..15
  Dice = rand(1..249)
  File.open('Adjectives.txt', 'r') do |adjectives|
    puts Names[2] + "the" + adjectives.readlines()[Dice]
  end
when 16..20
  Dice = rand(1..249)
  File.open('Adjectives.txt', 'r') do |adjectives|
    puts "the" + adjectives.readlines()[Dice].strip() + "Boywith"+ Names[5]
  end
end
