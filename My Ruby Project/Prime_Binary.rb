# frozen_string_literal: true

def set_number(index1, index2) # Kullanıcının girdiği başlangıç ve bitiş değerlerine göre diziyi oluştur
    sayi_dizi=[]
    @sayi_dizi=sayi_dizi
  
    while index1 <= index2
  
        sayi_dizi << index1 
        index1+=1 
    end
  end
   
    def prime?(number)  # Sayı asal mı?
  
      return false if number <= 1
  
      (2..number/2).each do |bolen|
  
      return false if number % bolen == 0
      end
  
      return true
    end
          
    def decimal_to_binary(number) # Onluk tabandan ikilik tabana dönüştür
      binary_array = []
  
      while number > 0
        binary_array.unshift(number % 2)
        number = number / 2 
      end
        binary = binary_array.join(" ")
        @binary=binary
        
    end

    puts "başlangıç ve bitiş değeri giriniz: "
  
    index1, index2 = gets.chomp.split.map(&:to_i)
  
    set_number(index1, index2)
    asal_sayac=0
    @asal_sayac=asal_sayac
  
    @sayi_dizi.select do |dizi_eleman|
  
      if prime?(dizi_eleman) == true
        asal_sayac+=dizi_eleman
      end
    end
  
    
    decimal_to_binary(asal_sayac)
  
  
  
    puts "Aralık: #{index1}-#{index2}" 
    puts "Toplam: #{asal_sayac}"
    puts "Binary: #{@binary}"
  