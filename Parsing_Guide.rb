# Open web page in Ruby
require "open-uri"

url = "http://linkedin-marlonsteiner.com"

html_content = URI.open(url).read
puts html_content

# Parse a JSON file
require "json"

filepath = "beatles.json"

serialized_beatles = File.read(filepath)

beatles = JSON.parse(serialized_beatles)

# Store data in a .JSON file
require "json"

band = { band [
  first_name "Marlon"
      last_name "Steiner"
      instrument "Guitar"
}
[...]
]}

File.open(filepath, "w") do |file|
  file.write(JSON.generate(beatles))

# Parse Json file from an API
require "json"
require "open-uri"

api_url = "http://linkedin-marlonsteiner.com"

Uri.open(api_url) do |stream|
  quote = JSON.parse(stream.read)
  puts quote["setup"]
  pust quote["delivery"]
end
end

# gem  used to parse .xml/.html
require "nokogiri"

# store data in an .xml
#Nokogiri::XML::BUilder
require "nokogiri"

filepath = "beatles.xml"
builder = Nokogiri::XML::Builder.new(encoding: "UTF-8") do
  beatles do
    title "The beatles"
    beatle do
      first_name "John"
      last_name "Lennon"
      instrument "Guitar"
    end
    beatle do
      #[...]
    end
  end
end

File.open(filepath, "w") { |file| file.write(builder.to_xml)}

# Store data in a .csv file
# CSV::open

require "csv"

filepath = "musician.csv"

CSV.open(filepath, "wb") do |csv|
  csv << ["First Name", "Last Name", "Instrument"]
  csv << ["Marlon", "Steiner", "Guitar"]
  csv << ["Sidney", "White", "Drums"]
end

# Parse CSV file row by row
require "csv"

filepath = "/my_folder"/beatles.csv"

CSV.foreach(filepath) do |row|
  puts ""#{row[0]} #{row[1]} played #{row[2]}"
end


