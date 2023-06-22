# frozen_string_literal: true

subscribers = %w[5553457867 5417890987 5524567867 5356789865 5321234567 5546754321 5389876543]

monthly_price = [120, 50, 500, 70, 50, 67, 99] # Tiplere (tamsayı) dikkat

starred_customer = [true, false, true, true, false, false, true]

def telephone_no_to_customer_index(subscribers, telephone_no) # Telefon numarasına karşı düşen müşteri indisi

  subscribers.find_index(telephone_no)
    
end

def starred_customer?(starred_customer, customer_index) # İndisli müşterinin indirim hakkı var mı?
  
  starred_customer[customer_index]
  
end

# İndirimi ilgili indeksli müşteriye uygulayarak monthly_price dizisini güncelle.
def apply_discount(monthly_price, customer_index, discount_amount)

  new_discount_amount = discount_amount.delete("INDIRIM").to_f
  @new_discount_amount = new_discount_amount

  discount = monthly_price[customer_index]*(100-new_discount_amount)/100
  @discount = discount

end

puts "telefon no ve indirim miktarını (ÖRNEK:INDIRIM30) giriniz:"

telephone_no, discount_amount = gets.chomp.split # Telefon numarası ve indirim miktarını al

customer_index = telephone_no_to_customer_index(subscribers, telephone_no)

if telephone_no_to_customer_index(subscribers, telephone_no)

  puts "STATUS: VALID"


  if starred_customer?(starred_customer, customer_index)
    puts "DISCOUNT: POSSIBLE"

    if starred_customer[customer_index]


      if apply_discount(monthly_price, customer_index, discount_amount)

        puts "#{telephone_no} UPDATED PRICE #{monthly_price[customer_index]} TO #{@discount}"

      end
    end

  else
    puts "DISCOUNT: NOT POSSIBLE"
    puts "#{telephone_no} PRICE #{monthly_price[customer_index]}"
  end

else
  puts "STATUS: INVALID"
end

unless discount_amount.include?("INDIRIM")
  puts "STATUS: ERROR"
end

