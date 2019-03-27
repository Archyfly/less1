puts "Enter first side of triangle:"
a = gets.chomp.to_i
puts "Enter second side of triangle:"
b = gets.chomp.to_i
puts "Enter third side of triangle:"
c = gets.chomp.to_i

if (c >= a + b) || (a >= c + b) || (b >= c + a)
  puts "It's not triangle" #проверка, треугольник ли это
else # проверка на равносторонность
  if a == b && a == c && b == c then
    puts "Triangle is equilateral (having all its sides of the same length) and isosceles (has two equivalent sides)" # Isosceles - равнобедренный, Equilateral - равносторонний
  else
    if a > b && a > c then
      max_side = a
      sides_sqr_summ = b * b + c * c
    end
    if b > a && b > c then
      max_side = b
      sides_sqr_summ = c * c + a * a
    end
    if c > a && b < c then
      max_side = c
      sides_sqr_summ = b * b + a * a
    end
    # puts "max_side = #{max_side}" # проверка значения max_side
    # puts "sides_sqr_summ = #{sides_sqr_summ}" # проверка sides_sqr_summ
    if max_side**2 == sides_sqr_summ then
      puts "Triangle is rectangular, gipotenuse = #{max_side}"
    elsif (a == b) || (a == c) || (b == c)
      puts "Triangle has two equivalent sides, it's isosceles"
    else
      puts "Triangle has three diffent sides and NOT rectangular "
    end
  end
end
