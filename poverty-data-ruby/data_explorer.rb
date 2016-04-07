def introduction
  puts "Hello and welcome to the poverty index explorer. Which State are you interested in finding information about?"
  state = gets.chomp 
  puts "Which county in that state would you like information about?"
  county = gets.chomp
  return [state, county]
end

def get_data(state, county)
  url = "http://www.census.gov/did/www/saipe/downloads/estmod14/est14_#{state.upcase}.txt"
  f = File.open(url)
  rows = f.split("\n")

  rows.each do |row|
    youth_in_poverty = row.split(" ")[8]
    percentage_youth_in_poverty = row.split(" ")[11]
    county_name = row.split(" ")[193-238]
  end

  
end
