# frozen_string_literal: true
def ideal_weight(height, gender) # Ideal Kilo Degeri Hesaplama

  if gender=="K"
    (height-100)-(height-150)/2
  

  elsif gender=="E"
    (height-100)-(height-150)/4
    
  end
end
  print "boyunuzu, kilonuzu, cinsiyetinizi(K/E) giriniz:"

  height, weight, gender = gets.chomp.split
  height=height.to_i
  weight=weight.to_i

if weight < ideal_weight(height, gender)
  puts "zayif"

elsif weight == ideal_weight(height, gender)
  puts "ideal"

elsif weight > ideal_weight(height, gender) 
  puts "obez"
end


