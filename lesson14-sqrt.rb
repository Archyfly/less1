puts "Enter first coefficient:"
a = gets.chomp.to_i
puts "Enter second coefficient:"
b = gets.chomp.to_i
puts "Enter third coefficient:"
c = gets.chomp.to_i
x = 0
discr = b*b - 4*a*c

if discr > 0 then
  puts "It has two solutions"
  puts "discriminant = #{discr}"
x1 = ((-b) - Math.sqrt(discr))/(2*a)
x2 = ((-b) + Math.sqrt(discr))/(2*a)
  puts "x1=#{x1}, x2=#{x2}"
elsif discr < 0 then puts "I hasn't solutions"
else
  puts "It has one solution"
  puts "discriminant = #{discr}"
  x = (-b)/(2*a)
  puts "x = #{x}"
end
