puts "sayı girme işlemi bitince okey yazın"
onay=gets.chomp
while onay==!"okey"
    puts "sayı gir:"
    sayi=gets.chomp.to_f
break
end

puts "işlem seciniz(toplama, cikarma, carpma, bolme):"
islem=gets.chomp

    if islem == "toplama"
        puts sayi+=sayi
        
        
    elsif islem == "cikarma"
        puts sayi-=sayi

    elsif islem == "carpma"
        puts sayi*=sayi

    elsif islem == "bolme"
        puts sayi/=sayi

    else
        puts "tekrar deneyin"
    end





#istedigim kadar sayı girip sayı gırısı sonlandırmak için entere basmam lazım nasıl yaparım


    

    

