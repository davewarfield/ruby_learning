dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "chicago" => "312",
  "austin" => "512",
  "albuquerque" => "505",
  "phoenix" => "602",
  "denver" => "303",
  "butte" => "406",
  "seattle" => "206",
  "saltlakecity" => "315",
  "paloalto" => "650",
  "calgary" => "403"
}

def city_names(directory)
  city_list = ''
  directory.each { |k,v| city_list << k << ' '}
  city_list.chomp(' ') # get rid of trailing space
end

def get_code(city, directory)
  directory[city.downcase]
end

loop do
  puts "Do you want to look up a city name? (y/n)"
  answer = gets.chomp
  if answer != 'y'
    break
  end

  puts "Enter name of city from this list:"
  puts '  ' + city_names(dial_book)

  city = gets.chomp
  # area_code = dial_book[city.downcase]
  # instead of the above line, use a method call as specified
  # in the homework assignment
  area_code = get_code(city, dial_book)

  if (area_code)
    puts "The area code for " << city << " is " << area_code
  else
    puts "  \'" << city << "\' is not a valid city"
  end
end