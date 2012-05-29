# encoding: utf-8
require 'rubygems'
require 'nokogiri'
require 'open-uri'

#url = "http://www58.tok2.com/~Asmodeus/"
url = "https://www.google.co.jp"
html = Nokogiri::HTML(open(url), nil, 'UTF-8')

html.search('img').each do |entry|
  puts entry.search('@src').text ; "\n"
end
