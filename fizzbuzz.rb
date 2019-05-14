(1..100).each do |i|

  if i % 3 != 0 and i % 5 != 0

    puts i
  elsif i % 3 != 0

    puts "Fizz"
  elsif i % 5 != 0

    puts "Buzz"

  end
end
