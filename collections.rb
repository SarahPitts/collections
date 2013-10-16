collection = [126, 516, 846, 491, 774, 824, 640, 913, 276, 309, 127, 175, 471, 274, 200, 56, 40, 533, 514, 451, 893, 723, 395,
 217, 65, 158, 121, 573, 574, 91, 235, 17, 54, 889, 332, 404, 120, 178, 35, 162, 670, 837, 576, 645, 370, 203, 420,
 400, 498, 270, 207, 648, 22, 524, 818, 821, 307, 588, 413, 52, 102, 352, 537, 634, 347, 42, 673, 116, 350, 884,
 446, 108, 190, 764, 817, 608, 734, 79, 883, 584, 231, 50, 892, 353, 183, 660, 95, 945, 630, 58, 348, 812, 663, 865,
 830, 791, 1000, 605, 756, 229, 583, 37, 874, 291, 686, 147, 948, 689, 125, 265, 96, 890, 64, 844, 195, 894, 579,
 129, 257, 703, 20, 788, 443, 526, 606, 384, 698, 742, 34, 596, 357, 825, 852, 953, 354, 853, 531, 790, 432, 558,
 656, 221, 293, 595, 754, 938, 885, 599, 399, 355]
 
 puts "Exercise 1 - Find all the even numbers"
 #This line creates a new array (even_collection) with only the even numbers from collection ^
 even_collection = collection.select {|item| item.even? }
 #This line prints the title of the collection
 puts "Even Collection"
 #This line takes each item in even_collection and displays it.  Without the .join(', ') it would display each on
 #individual lines and take up the whole screen.  Try it without the .join(', ') and see what happens.
 puts even_collection.join(', ')

 puts "Exercise 2 - Find the square of each number"
 square_collection = collection.collect {|item| item*item }
 puts "Square Collection"
 puts square_collection.join(', ')

 puts "Determine if there is a number evenly divisible by 31"
 thirtyone_collection = collection.select {|item| item%31 ==0 }
 puts "Evenly divisible by 31 Collection"
 puts thirtyone_collection.join(', ')

 puts "Split the numbers into two sets: ones below 500 and ones above"
 split_collection = collection.partition {|item| item <= 500 }
 puts "Split Collection at 500"
 puts split_collection.join(', ')

 puts "Print them in ascending order with a place marker"
 sort_collection = collection.sort
 marker_collection = sort_collection.each_with_index {|item, i| puts [i, item].join(". ")}

 puts "Find the sum of all numbers between 600 and 700"
 between_collection = collection.select {|item| item >= 600 && item <= 700 }
 sum_collection = between_collection.inject(0) {|sum, i| sum + i}
 puts "All numbers between 600 and 700"
 puts between_collection.join(', ')
 puts "Sum of all numbers between 600 and 700"
 puts sum_collection



 puts "Create groups by hundreds (100s, 200s, 300s), where each set is sorted in increasing order"
 one_collection = collection.select {|item| item >= 0 && item <= 100 }
 puts "All numbers between 0 and 100"
 puts one_collection.sort.join(', ')

 two_collection = collection.select {|item| item >= 100 && item <= 200 }
 puts "All numbers between 100 and 200"
 puts two_collection.sort.join(', ')

 three_collection = collection.select {|item| item >= 200 && item <= 300 }
 puts "All numbers between 200 and 300"
 puts three_collection.sort.join(', ')

 four_collection = collection.select {|item| item >= 300 && item <= 400 }
 puts "All numbers between 300 and 400"
 puts four_collection.sort.join(', ')

 five_collection = collection.select {|item| item >= 400 && item <= 500 }
 puts "All numbers between 400 and 500"
 puts five_collection.sort.join(', ')

 six_collection = collection.select {|item| item >= 500 && item <= 600 }
 puts "All numbers between 500 and 600"
 puts six_collection.sort.join(', ')

 seven_collection = collection.select {|item| item >= 600 && item <= 700 }
 puts "All numbers between 600 and 700"
 puts seven_collection.sort.join(', ')

 eight_collection = collection.select {|item| item >= 700 && item <= 800 }
 puts "All numbers between 700 and 800"
 puts eight_collection.sort.join(', ')

 nine_collection = collection.select {|item| item >= 800 && item <= 900 }
 puts "All numbers between 800 and 900"
 puts nine_collection.sort.join(', ')

 ten_collection = collection.select {|item| item >= 900 && item <= 1000 }
 puts "All numbers between 900 and 1000"
 puts ten_collection.sort.join(', ')



 puts "Exercise 8 - Find all numbers which have the digit 6"
 select_collection = collection.find_all { |number| number.to_s.include? ("6")}
 puts select_collection.join(', ')