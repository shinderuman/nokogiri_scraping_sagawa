# encoding: utf-8
require 'rubygems'
require 'nokogiri'
require 'net/http'

#url = "http://www58.tok2.com/~Asmodeus/"
url = "https://www.google.co.jp"
Net::HTTP.version_1_2
html = nil
Net::HTTP.start('www58.tok2.com', 80) {|http|
 html = Nokogiri::HTML(http.get('/home/asmodeus/', '').body, nil, 'UTF-8')
}

html.search('img').each do |entry|
  puts entry.search('@src').text ; "\n"
end

