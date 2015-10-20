#!/usr/bin/env ruby

books ={
  Landslide: 4,
  Dragonscyte: 5,
  Onemaster: 7,


}
started = "yes"

while started == "yes"
  puts "\nWhat would you like to do? Options: (add)(update)(delete)(print)"
    auswahl = gets.chomp
  
    case auswahl
      when "add"
        puts "Which book do you want to add?"
        titel = gets.chomp
      if books[titel.to_sym].nil?
        puts "Which rating should this book get? (1 - 10)"
        rating = gets.chomp
        books[titel.to_sym] = rating.to_i
        puts "#{titel} was put to the Hash with a rating of #{rating}."
      else puts "This book is already in a hash-table!"
    end
    when "update"
      puts "Which rating do you want to update?"
      titel = gets.chomp
    
      #.nil?
      if books[titel.to_sym].nil?
        puts "Error! No Book found!"
      else puts "How would you rate it?"
        rating = gets.chomp
      books[titel.to_sym] = rating.to_i
      puts "Your rating for the #{titel} was updated to #{rating}!"
    end
      
    when "delete"
      puts "Which Title do you want to get rid off?"
      titel = gets.chomp.to_sym
      if books[titel.to_sym].nil?
        puts "#{titel} doesnt exist."
      else books.delete(titel)
    end
      
    when "print"
      # book != books
      books.each do |book, rating|
        puts "#{book}: #{rating}"
    end
    
    else
      puts "Error! U killed it! :/"
    end
  end
  puts books
