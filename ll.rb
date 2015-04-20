#!/usr/bin/env ruby

require_relative 'lib/linked_list'

# ARGV is an array that holds the command line arguments that were passed
payloads = ARGV

# Create a LinkedList
ll = LinkedList.new

# And, populate it

payloads.each do |payload|
  ll.push payload
end

#if payloads.size > 0
#  ll.push payloads[0]
#end

#if payloads.size > 1
#  ll.push payloads[1]
#end

#if payloads.size > 2
#  ll.push payloads[2]
#end

# Then, print it out
#print ll

# <YOUR CODE GOES HERE>
# if payloads.size > 3
#   print "* -> #{ll.get(0).inspect} -> #{ll.get(1).inspect} -> #{ll.get(2).inspect} -> #{ll.get(3).inspect} -> nil"
# elsif payloads.size > 2
#   print "* -> #{ll.get(0).inspect} -> #{ll.get(1).inspect} -> #{ll.get(2).inspect} -> nil"
# elsif payloads.size > 1
#   print "* -> #{ll.get(0).inspect} -> #{ll.get(1).inspect} -> nil"
# elsif payloads.size > 0
#   print "* -> #{ll.get(0).inspect} -> nil"
# else
#   print "* -> nil"
# end

print "* -> "

payloads.size.times do |i|
  print "#{ll.get(i).inspect} -> "
end

print "nil"
