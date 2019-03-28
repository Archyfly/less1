puts "Enter first side of triangle:"
a = gets.chomp.to_i
puts "Enter second side of triangle:"
b = gets.chomp.to_i
puts "Enter third side of triangle:"
c = gets.chomp.to_i

if (c >= a + b) || (a >= c + b) || (b >= c + a) 
puts "It's not triangle" #проверка, треугольник ли это
else
  if a == b && a == c && b == c  # проверка на равносторонность
    puts "Triangle is equilateral . Has three equal sides." # Isosceles - равнобедренный, Equilateral - равносторонний
    elsif (a == b) || (a == c) || (b == c) 
    puts "Triangle has two equivalent sides"
    # Проверка, если две стороны равны, и третья больше первых двух (только тогда имеет смысл проверять на прямоугольность)    
    if (a == b) && (c > a) 
      puts "Triangle is rectangular" if a**2 + b**2 == c**2 
      if (c == b) && (a > c)
        puts "Triangle is rectangular" if c**2 + b**2 == a**2
        if (c == a) && (b > a) 
          puts "Triangle is rectangular" if c**2 + a**2 == b**2
        end
      end
    else  
      puts "Triangle is NOT rectangular"
    end   
  else
    puts "Triangle has different sides"
  if a > b && a > c 
    max_side = a
    sides_sqr_summ = b**2 + c**2
  end
  if b > a && b > c  
  max_side = b
  sides_sqr_summ = c**2 + a**2
  end
  if c > a && b < c
  max_side = c
  sides_sqr_summ = b**2 + a**2   
  end
  puts "Triangle is rectangular, gipotenuse = #{max_side}" if max_side*max_side == sides_sqr_summ 
  end
end


