# frozen_string_literal: true
students = {
  'Bilgisayar' => {
    'isim' => ['Ahmet Ekinci', 'Mehmet Mutlu', 'Zeynep Yorulmaz'],
    'not' => [[50, 40, 75], [30, 80, 45], [90, 65, 55]],
    'aldigi dersler' => [['Matematik', 'Programlama', 'Fizik'], ['Matematik', 'Bilgisaya Müh. Giris', 'Programlama'], ['Yabanci Dİl', 'Bilgisaya Müh. Giris', 'Fizik']]
  },
  'Elektrik' => {
    'isim' => ['Ali Kilic', 'Mehmet Yilmaz'],
    'not' => [[60, 75], [40, 75]],
    'aldigi dersler' => [['Matematik', 'EMT'], ['EMT', 'Programlama']]
  },
  'Makina' => {
    'isim' => ['Ayse Mutlu', 'Betul Yildiz'],
    'not' => [[45, 75], [30, 95, 50]],
    'aldigi dersler' => [['Matematik', 'Programlama'], ['Kimya', 'Programlama', 'Fizik']]
  }
}

def points_courses(students, course)
  points, courses = {}, {}
  points[course] = []
  students.each do |department, data|
    courses[department] = []
    data['isim'].each_with_index do |name, index|
      if data['aldigi dersler'][index].include?(course)
        courses[department] << name
        points[course] << data['not'][index][data['aldigi dersler'][index].find_index(course)]
      end
    end
  end
  [points, courses]
end

course, requested = gets.chomp.split

points, courses = points_courses(students, course)
if requested == "not_ortalama"
  points.each_value do |point|
    total_points = point.sum
    count = points[course].count
    puts points
    puts total_points / count
  end
elsif requested == "ogr_liste"
  puts courses
end    