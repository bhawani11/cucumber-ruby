#code for write a text in text file
f=File.new("./myfile.txt","w")
f.puts("hello my name is bhawani singh raj")
f.puts("and what is your name?")
f.close

 #code for read the text from text file
 file =File.open("./myfile.txt","r")
 file_data = file.read
puts "#{file_data}"
f.close