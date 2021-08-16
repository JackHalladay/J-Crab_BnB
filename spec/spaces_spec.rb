require 'pg'
require_relative '../lib/spaces.rb'
require_relative './setup_test_database'

describe '.view' do
  it 'lists all pages' do
    add_row_to_test_database
    spaces = Spaces.view
    expect(spaces).to include 'This is a space!'
  end
end

describe '.create' do
  it 'creates a new space' do
    Spaces.create(name: 'http://www.example.org')
    p Spaces.view
    expect(Spaces.view).to include 'http://www.example.org'
  end
end