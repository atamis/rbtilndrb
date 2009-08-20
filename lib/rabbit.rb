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


class Rabbit
	def initialize(gender)
		if gender == "f"
			@@gender = "male"
		elsif gender == "m"
			@@gender = "female"
		else
			puts "Must be \"m\" or \"f\" please."
		end
		@@age = 0
		@@eligible = false
		@@alive = true
	end
	
	def alive?
		return @@alive
	end
	
	def gender
		return @@gender
	end
	
	def male?
		if @@gender == "male"
			return true
		else
			return false
		end
	end
	
	def age
		return @@age
	end
	
	def female?
		if @@gender == "female"
			return true
		else
			return false
		end
	end
	
	def available?
		return @@eligible
	end
	
	def breed
		if @@eligible == false
			return "Not eligible!"
		else
			@@eligible == false
		end
	end
	
	def next 
		@@age += 1
		if @@age > 3
			@@eligible == true
		end
		
		if @@age > 7
			@@alive = false
			@@eligible = false
		end
	end
end
