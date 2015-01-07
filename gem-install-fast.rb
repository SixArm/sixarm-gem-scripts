#!/usr/bin/env ruby
#
# Ruby script to install a gem if it's needed.
#
# If the gem is missing, then install it.
# If the gem is present, then do nothing.
#
# This command calls "gem list" to find what's installed.
#
# Example:
#
#    gem-install-fast bdoc
#
# Example of multiple gems:
#
#    gem-install-fast bdoc rdoc sdoc
#
# This command can also processes STDIN:
#
#    cat gems.txt | gem-install-fast
#
# This gem doesn't do anything with version;
# this can be a good area for future features.
#
require 'set'

names = !ARGV.empty? ? ARGV.to_a : STDIN.to_a
names = names.map{|name| name.chomp}

gems = Set.new(`gem list | sed / .*/`.lines.map{|line| line.chomp})

names.each{|name|
  if gems.include? name
    puts "#{name} [installed]"
  else
    puts "#{name} [installing]"
    `gem install #{name}`
  end
}
