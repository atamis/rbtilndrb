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
	mr_there = false
	$mrabbits.each do |mr|
		if mr.available?
			mr_there = true
		end
	end
	fl_there = false
	$frabbits.each do |fr|
		if fr.available?
			fl_there = true
		end
	end
	if mr_there && fl_there
		$frabbits.length.times {make_new}
	end
#	$mrabbits.each { |m| ml.push(m) if m.available?}
#	$frabbits.each { |f| fl.push(f) if f.available?}
#	if ml.length <= fl.length
#		counter = 0
#		ml.length.times do 
#			make_new(ml[counter], fl[counter])
#			counter += 1
#		end
#	else
#		counter = 0
#		fl.length.times do
#			make_new(ml[counter], fl[counter])
#			counter += 1
#		end
#	end
end

def make_new(m, f)
	(rand(7)+3).times do
		if rand(2) == 0
			$mrabbits.push(Rabbit.new("m"))
		else
			$frabbits.push(Rabbit.new("f"))
		end
	end
end
