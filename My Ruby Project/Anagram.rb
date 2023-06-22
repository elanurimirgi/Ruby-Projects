# İpucu: Bir kelimeyi harf dizisine dönüştürmek için kelime.split('')
#        kullanabilirsiniz.  Anagram kelimeyi nasıl tespit edersiniz?

kelimeler =  %w[
  demo none tied evil
  dome mode live fowl
  veil wolf diet vile
  edit tide flow neon
]

anagram = {}
kelimeler.each do |kelime|
  key = kelime.split('').sort.join('')
  if anagram[key].nil? #value kısmı eğer boşsa 
    anagram[key] = [kelime] 
  else
    anagram[key] << kelime
  end
end
puts anagram
#neden sadece key kısmıyla işlem yaptık sonda else olan yerde value ile işlem yapmamız gerekmezmiydi bence çıktı bu 
#yüzden hata vermeliydi ama calıştı birde 15.satırda kelimeyi neden köşeeli paranteze aldık sadece kelime yapınca
#en aşagıdaki çıktıyı veriyor?
