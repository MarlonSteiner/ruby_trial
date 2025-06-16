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
