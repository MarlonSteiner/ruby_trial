# Open web page in Ruby
require "open-uri"

url = "http://linkedin-marlonsteiner.com"

html_content = URI.open(url).read
puts html_content
