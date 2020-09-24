def fizz_buzz(number)
  elsif number % 15 ==0
    puts "fizz_buzz"
   
  if number % 3 == 0
    puts "fizz"
  elsif number %5 ==0
    puts "buzz"
  
  else 
    number.to_s
end
end

puts"数字を入力してください。"

input = gets.to_i

 

puts "結果は..."

puts fizz_buzz(input)