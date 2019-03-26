puts "Enter first side of triangle:"
a = gets.chomp.to_i
puts "Enter second side of triangle:"
b = gets.chomp.to_i
puts "Enter third side of triangle:"
c = gets.chomp.to_i

if (c >= a+b) || (a >= c+b) || (b >= c+a) then puts "It's not triangle" #проверка, треугольник ли это
else
  if a==b && a==c && b==c then  # проверка на равносторонность
    puts "Triangle is equilateral . Has three equal sides." # Isosceles - равнобедренный, Equilateral - равносторонний
    elsif (a==b) || (a==c) || (b==c) then
      puts "Triangle has two equivalent sides"
    # Проверка, если две стороны равны, и третья больше первых двух (только тогда имеет смысл проверять на прямоугольность)    
    if (a==b) && (c>a) then
      puts "Triangle is rectangular" if a*a+b*b == c*c
          if (c==b) && (a>c) then
            puts "Triangle is rectangular" if c*c+b*b == a*a
              if (c==a) && (b>a) then
                puts "Triangle is rectangular" if c*c+a*a == b*b
              end
          end
      else  puts "Triangle is NOT rectangular"
    end   
  else
   puts "Triangle has different sides"
        if a>b && a>c then 
            max_side = a
            sides_sqr_summ = b*b + c*c
          end
          if b>a && b>c then 
            max_side = b
            sides_sqr_summ = c*c + a*a
          end
          if c>a && b<c then
            max_side = c
            sides_sqr_summ = b*b + a*a   
        end
      # puts "max_side = #{max_side}" # проверка значения max_side
      # puts "sides_sqr_summ = #{sides_sqr_summ}" # проверка sides_sqr_summ 
      puts "Triangle is rectangular, gipotenuse = #{max_side}" if max_side*max_side == sides_sqr_summ 
  end
end


