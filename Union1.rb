value2 =1
while value2 == 1 do 
puts "For outsiders tickets please press 1, for insiders please press 2, to switch between insiders and outsiders please press 0 to exit the program press 3"
value = gets.chomp.to_i
if value == 3
	break
end
if value == 2
arrayOfIds =[]
while true  do 
x=0
file = File.open("inputfile.txt", 'r')
while !file.eof?
   arrayOfIds[x]=file.readline.to_i
   x=x+1
end
# puts arrayOfIds
puts "Please enter the ID"
input=gets.chomp
if input.to_i == 0 
	break
end
if !arrayOfIds.include? input.to_i 
File.open('inputfile.txt', 'a') do |f2|  
  # use "\n" for two lines of text  
  f2.puts input 
	end  
	puts "Success ! you have bought the ticket "
else 
	puts "ERROR ! The ID has already been registered"
end
end
	
elsif value == 1 
	arrayOfOutsidersIds =[]
while true  do 
y=0
file = File.open("outsiders.txt", 'r')
while !file.eof?
   arrayOfOutsidersIds[y]=file.readline.to_i
   y=y+1
end
# puts arrayOfOutsidersIds
puts "Please enter the ID"
input=gets.chomp
if input.to_i == 0 
	break
end
 count = arrayOfOutsidersIds.count(input.to_i) 
 if count <= 1
File.open('outsiders.txt', 'a') do |f3|  
  # use "\n" for two lines of text  
  f3.puts input 
	end  
	puts "Success ! you have bought the ticket " 
else
	puts "ERROR ! The ID has already been registered"
end
end
end

end