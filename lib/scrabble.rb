class Scrabble

  def point_values                      #i wanted this at the top.
    {
      "A"=>1, "B"=>3, "C"=>3, "D"=>2,
      "E"=>1, "F"=>4, "G"=>2, "H"=>4,
      "I"=>1, "J"=>8, "K"=>5, "L"=>1,
      "M"=>3, "N"=>1, "O"=>1, "P"=>3,
      "Q"=>10, "R"=>1, "S"=>1, "T"=>1,
      "U"=>1, "V"=>4, "W"=>4, "X"=>8,
      "Y"=>4, "Z"=>10, ""=>0
    }
  end

  def score(word)                      #this part was given                                   #the next thing i need to do is
    total = 0                          #assigns an int value to 'total' variable              #set up the dreaded ENUMERABLE
    letters = word.upcase.split("")    #this take the given word and upcases it               #still unfamiliar with these so
                                       #and splits it into an array of indivdual strings      #i'll just use an each do

    letters.each do |letter|           #takes each index in my new array of letters from @word a
                                       #and will make something happen to them one at a time

      total += point_values[letter]    #this is where i really fall apart
                                       #i need the letters to now cycle through the point_values hashes
                                       #and add the values into my 'total' variable i created
                                       #this line is intended to
                                       # -- take my empty 'total' and add one at a time the point value of EACH letter,
                                       # -- based on the given point_values hash. grasping at straws a bit here.
    end                                #this ends the enumerable each loop
    total                              #this should return the total point value of the scored word
  end                                  #ends the 'score' method


end

#it looks like it can add the values correctly!
#not a huge victory but i'm happy it works.
