puts "Enter your name:"
name = gets.chomp
puts "Enter your height:"
height = gets.chomp.to_i # Преобразуем в целое
weight = height - 110 # Вычисляем вес
if weight > 0
  puts "Your ideal weight is #{weight}"
else
  puts "#{name}, your weight is optimal!"
end
