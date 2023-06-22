redhouse = {
  'iyi'    => 'good',
  'kötü'   => 'bad',
  'çirkin' => 'ugly',
  'güzel'  => 'beautiful'
}

fono = {
  'iyi'    => 'angel',
  'kötü'   => 'evil',
  'çirkin' => 'ugly',
  'akıllı' => 'smart'
}
fono.each_key do |t|
  if redhouse.each_key.include?(t)
    redhouse[t] = [redhouse[t]] << fono[t] unless redhouse[t] == fono[t]
  else
    redhouse[t] = fono[t]
  end
end
p redhouse
#burada each value olması gerekmezmi redhouse[t] yerine çünkü t yi biz fononun each keyinde dolaşan eleman olarak aldık

  
