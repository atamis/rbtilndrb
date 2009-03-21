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
require 'lib/general'
require 'lib/rabbit'

$year = 0
$mrabbits = []
$frabbits = []
$mrabbits[1] = Rabbit.new("m")
$frabbits[1] = Rabbit.new("f")

puts "Welcome to RbtIlndRB! The Rabbit Island Simulator written in ruby! 
Type ? for more help."
puts

loop do
	print "root@rabbit-island $ "
	input = gets.chomp
	arg = input.split
	input = arg[0]
	args = arg[1]
	proccess_input(input, arg)
end
