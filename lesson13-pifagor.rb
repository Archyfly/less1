puts "Enter first side of triangle:"
a = gets.chomp.to_i
puts "Enter second side of triangle:"
b = gets.chomp.to_i
puts "Enter third side of triangle:"
c = gets.chomp.to_i
max_side = 0 # для определения наибольшей стороны
if ((c >= a+b) || (a >= b+c ) || (b >= c+a)) then 
	puts "It's not triangle!"
	else 
		if a==b && a==c then
  			puts "Triangle is equilateral . Has three equal sides." # Isosceles - равнобедренный, Equilateral - равносторонний
		else

			if (a!=b) && (a!=c) && (b!=c) then
 				 puts "triangle with different sides"
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
			end
			puts "max_side = #{max_side}" # проверка
			puts "sides_sqr_summ = #{sides_sqr_summ}" # проверкаcatets_sqr_summ 
			puts "Triangle is rectangular, gipotenuse = #{max_side}" if max_side*max_side == sides_sqr_summ 
		end
		if ( (a==b)&&(a!=c) || (a==c)&&(a!=c) || (b==c)&&(c!=a) )
		 puts "Triangle has equal two sides"
		end

end

