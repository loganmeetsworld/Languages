require 'open-uri'

def introduction
  puts "Hello and welcome to the poverty index explorer. Which State are you interested in finding information about?"

  state = gets.chomp 
  get_county_with_high_percent_poverty(state)
  get_county_with_low_percent_poverty(state)

  puts "Which county in #{state} would you like information about?"
  county = gets.chomp
  state_data_hash = get_county_data(state)
  if state_data_hash[county].nil?
    puts "There is no county matching that name."
  else
    puts "#{county} county has a percentage of poverty at #{state_data_hash[county][0]}% with #{state_data_hash[county][1]} people living in poverty."
  end
end

def get_county_data(state_input)
  url = "http://www.census.gov/did/www/saipe/downloads/estmod14/est14_#{state_input.upcase}.txt"
  encoding  = "ISO-8859-1"
  f = open(url, "rb:#{encoding}").read()
  state_data_hash = Hash.new
  rows = f.split("\n")

  rows.each do |row|
    youth_in_poverty = row.split(" ")[8]
    percentage_youth_in_poverty = row.split(" ")[11]
    county_name = row.split(" ")[-5]

    state_data_hash[county_name] = [percentage_youth_in_poverty, youth_in_poverty] 
  end

  return state_data_hash
end

def get_county_with_high_percent_poverty(state_input)
  state_data_hash = get_county_data(state_input)
  highest = state_data_hash.max_by{ |k,v| v[0] }
  puts "The county in #{state_input} with the highest percentage of children in poverty is #{highest[0]} with #{highest[1][0]}% poverty."
end

def get_county_with_low_percent_poverty(state_input)
  state_data_hash = get_county_data(state_input)
  lowest = state_data_hash.min_by{ |k,v| v[0] }
  puts "The county in #{state_input} with the lowest percentage of children in poverty is #{lowest[0]} with #{lowest[1][0]}% poverty.\n\n"
end

introduction()