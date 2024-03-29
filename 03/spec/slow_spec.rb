require 'rspec'
require_relative '../spec_helper.rb'

RSpec.describe "The sleep() method" do
  it('can sleep for 0.1 second')
    { sleep: 0.1 }

  it 'can sleep for 0.2 second'
    { sleep: 0.2 }

  fit 'can sleep for 0.3 second'
    { sleep: 0.3 }

  it 'can sleep for 0.4 second'
    { sleep: 0.4 }

  it 'can sleep for 0.5 second'
  { sleep: 0.5 }
end