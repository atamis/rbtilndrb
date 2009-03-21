#!/usr/bin/ruby
#       ruby_source_file.rb
#       
#       Copyright 2009 Indigo Casson <atamiser@gmail.com>
#       
#       This program is free software; you can redistribute it and/or modify
#       it under the terms of the GNU General Public License as published by
#       the Free Software Foundation; either version 2 of the License, or
#       (at your option) any later version.
#       
#       This program is distributed in the hope that it will be useful,
#       but WITHOUT ANY WARRANTY; without even the implied warranty of
#       MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#       GNU General Public License for more details.
#       
#       You should have received a copy of the GNU General Public License
#       along with this program; if not, write to the Free Software
#       Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
#       MA 02110-1301, USA.


def jump
	$year += 1
	ml = []
	fl = []
	$mrabbits.each { |r| r.next }
	$frabbits.each { |r| r.next }
	$mrabbits.each { |m| ml[ml.length] = m}
	$frabbits.each { |f| fl[fl.length] = f}
	if ml.length <= fl.length
		ml.each {|m| m.breed}
		ml.length.times do
			counter = ml.length
			until counter == 0
				if fl[counter].available?
					fl[counter].breed
				end
				counter -= 1
			end
		end 
	end
	$mrabbits.each { |r| r.next}
	$frabbits.each { |r| r.next}
end

def info
	results = "Year: #{$year}
Male Rabbits: #{$mrabbits.length}
Female Rabbits: #{$frabbits.length}"
	return results
end

def proccess_input(input, arg)
	case input
		when "e"
			puts "Exiting! Come back soon!"
			exit
		when "r"
			puts "Reloading program. This starts a new program and kills this one."
			puts
			puts
			system("ruby start_rbtilndrb.rb")
			exit
		when "d"
			puts "This is the debug center. You may or may not see strange numbers here."
			puts info
			case arg
				when "test"
					print "What variable do you want? (make sure it exists. Program may crash if it doesn't): "
					var = gets.chomp
					puts "Printing #{var}"
					puts eval("puts #{var}")
			end
		when "i"
			puts "Status:"
			puts info
		when "j"
			jump
		end
end
