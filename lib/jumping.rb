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

def make_new(m, f)
	m.breed
	f.breed
	(rand(7)+3).times do
		if rand(2) == 0
			$mrabbit[$mrabbit.length] = Rabbit.new("m")
		else
			$frabbit[$frabbit.length] = Rabbit.new
		end
	end
end
