# Helper file to setup our tests/specs for this program.
# NO NEED TO EDIT

require 'pry'
require 'rspec'

def safely_require(file)
  require_relative file
rescue LoadError
  # ignore
end

safely_require '../lib/example1'
safely_require '../lib/example2'
