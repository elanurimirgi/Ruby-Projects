# frozen_string_literal: true

def reverse(number) # sayının tersini bulma
    sayi = 0

    while number > 0
        sayi *= 10
        sayi += number % 10
        number /= 10
    end
    return sayi
end

print "palindromluğunu kontrol etmek istediğiniz sayıyı ve kaç defa kontrol etmek istediğinizi giriniz: "

number , depth = gets.chomp.split.map(&:to_i)

if number == reverse(number)
    puts "palindrom" 

else
depth_sayac = 0
number1 = 0

    while depth_sayac < depth

        number1= number + reverse(number) 
        number = number1
        depth_sayac += 1       

    end

    if  number1 == reverse(number1)
        puts "palindrom"
 
    else
        puts "ozelsayi"
     end  
end