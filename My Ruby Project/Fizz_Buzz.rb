
def fizzbuzz(blnck1,blnck2)
    sayi=1
    sayac=[0,0,0]
    while sayi<101
        if sayi % (blnck1*blnck2)==0
            puts "fizz buzz"
            sayac[2]+=1
        elsif sayi%blnck1==0
            puts "fizz"
            sayac[0]+=1
        elsif sayi%blnck2==0
            puts "buzz"
            sayac[1]+=1
        else
            puts sayi
        end
        sayi+=1 
    end
puts "toplam fizz buzz sayısı #{sayac[2]}"
puts "toplam fizz sayısı #{sayac[0]}"
puts "toplam buzz sayısı #{sayac[1]}"
end
puts "sayı giriniz 2 tane"
blnck1=gets.chomp.to_i
blnck2=gets.chomp.to_i
fizzbuzz(blnck1,blnck2)