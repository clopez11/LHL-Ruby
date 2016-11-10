# --- Creating a file and writing to it.

# fname = "sample.txt"
# newfile = File.open(fname, "w")
# newfile.puts "Hello World!"
# newfile.close

# --- File.open vs open

# require "open-uri"

# remote_base_url = "https://en.wikipedia.org/wiki"
# remote_page_name = "Ada_Lovelace"
# remote_full_url = remote_base_url + "/" + remote_page_name

# remote_data = open(remote_full_url).read
# local_file = open("my-downloaded-page.html", "w") 

# local_file.write(remote_data)
# local_file.close

# --- different syntax
# remote_data = open(remote_full_url).read
# my_local_file = File.open("my-downloaded-page.html", "w") 

# --- block notation
# File.open("sample.txt", "w"){ |somefile| somefile.puts "Hello file!"}

# --- same as below
# somefile = File.open("sample.txt", "w")
# somefile.puts "Hello file!"
# somefile.close

# --- Exercise: Copy Wikipedia's front page to a file using block notation

# require 'rubygems'
# require 'rest-client'

# wiki_url = "https://en.wikipedia.org"
# wiki_local_file = "wiki.html"

# File.open(wiki_local_file, "w") do |wiki_file| 
#   wiki_file.write(RestClient.get(wiki_url))
# end

# --- Reading from a file.

# file = File.open("sample.txt", "r")
# contents = file.read
# puts contents

# --- block notation
# contents = File.open("sample.txt", "r"){ |file| file.read }
# puts contents

# --- Readline vs readlines

# File.open("sample.txt").readlines.each do |line|
#   puts line
# end

# file = File.open("sample.txt", 'r')
# while !file.eof?
#    line = file.readline
#    puts line
# end

# --- Exercise: Using readlines

# require 'open-uri'

# url = "http://ruby.bastardsbook.com/files/fundamentals/hamlet.txt"
# puts open(url).readline

# --- Write a program that:
# ---- Reads hamlet.txt from the given URL
# ---- Saves it to a local file on your hard drive named "hamlet.txt"
# ---- Re-opens that local version of hamlet.txt and prints out every 42nd line to the screen

# require 'open-uri'

# url = "http://ruby.bastardsbook.com/files/fundamentals/hamlet.txt"
# url_data = open(url).read

# file = "hamlet.txt"

# File.open(file, "w") do |file| 
#   file.write(open(url).read)
# end

# File.open(file, "r") do |file|
#    file.readlines.each_with_index do |line, idx|
#       puts line if idx % 42 == 41
#    end   
# end

# --- Bonus Exercise: Print only Hamlet's lines

is_hamlet_speaking = false
File.open("hamlet.txt", "r") do |file|
   file.readlines.each do |line|

      if is_hamlet_speaking == true && ( line.match(/^  [A-Z]/) || line.strip.empty? )
        is_hamlet_speaking = false
      end

      is_hamlet_speaking = true if line.match("Ham\.")

      puts line if is_hamlet_speaking == true
   end   
end

# --- Closing Files

# datafile = File.open("sample.txt", "r")
# lines = datafile.readlines         
# datafile.close

# lines.each{ |line| puts line } 

# --- block syntax.
# lines = File.open("sample.txt", "r"){ |datafile| 
#    datafile.readlines
# }

# lines.each{|line| puts line}

# --- File existence and properties

# if File.exists?(filename)
#    puts "#{filename} exists"
# end

# dirname = "data-files"
# Dir.mkdir(dirname) unless File.exists?dirname
# File.open("#{dirname}/new-file.txt", 'w'){|f| f.write('Hello world!')}  

# --- Exercise: Find the top 10 largest files
# ---- Using the Dir.glob and File.size methods, write a script that targets a directory – 
# ---- and all of its subdirectories – and prints out the names of the 10 files that take up the most disk space.
# ---- Point your script to any subdirectory. You will obviously get different results than I do.

# DIRNAME = "W2D1"
# Dir.glob("#{DIRNAME}/**/*.*").sort_by{|fname| File.size(fname)}.reverse[0..9].each do |fname|
#    puts "#{fname}\t#{File.size(fname)}"
# end

# --- Exercise: Determine file makeup of directories, print to spreadsheet

# DIRNAME = "W2D1"

# hash = Dir.glob("#{DIRNAME}/**/*.*").inject({}) do |hsh, fname|
#    ext = File.basename(fname).split('.')[-1].to_s.downcase
#    hsh[ext] ||= [0,0]
#    hsh[ext][0] += 1
#    hsh[ext][1] += File.size(fname)   
#    hsh
# end               
# File.open("file-analysis.txt", "w") do |f|
#    hash.each do |arr|
#      txt = arr.flatten.join("\t")
#       f.puts txt
#       puts txt
#    end
# end
















