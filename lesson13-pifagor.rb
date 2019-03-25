puts "Enter first side of triangle:"
a = gets.chomp.to_i
puts "Enter second side of triangle:"
b = gets.chomp.to_i
puts "Enter third side of triangle:"
c = gets.chomp.to_i
max_side = 0 # для определения наибольшей стороны

if a==b && a==c then
  puts "Triangle is equilateral . Has three equal sides." # Isosceles - равнобедренный, Equilateral - равносторонний
elsif (a!=b) && (a!=c) && (b!=c) then
  puts "triangle with different sides"
  if (a<b) then puts "a < b"
    if (a<c) then puts "a - min"
    elsif puts "b max"
    end
  elsif (a<c) then puts " a < c, a > b => b - min, c - max"
  elsif (b>c) then puts "b > c, a > b => a - max, c - min "
  end




elsif (a==b) || (b==c) || (a==c) then puts "triangle Isosceles - равнобедренный"
#elsif puts "triangle Isosceles - равнобедренный"
#else
#puts "Triangle is equilateral . Has three equal sides."
  end




