#while loop
$i = 0
$num = 5
while $i < $num do
  puts "we are inside the loop with $i value = #$i"
  $i += 1
end

#While modifier
$i = 0
$num = 5
begin
  puts("we are inside the loop body(with) $i value = #$i ")
  $i += 1
end while $i < $num

