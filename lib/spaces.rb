require 'pg'

class Spaces
  attr_reader :id, :name, :description

  def initialize(id:, name:, description:)
    @id  = id
    @name = name
    @description = description
  end

  def self.view
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'bnb_test')
    else
      connection = PG.connect(dbname: 'bnb')
    end
    result = connection.exec("SELECT * FROM spaces ORDER BY name asc;")
    result.map do |space|
      Spaces.new(id: space['id'], name: space['name'], description: space['description'])
    end
  end

  def self.create(name:, description:)
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'bnb_test')
    else
      connection = PG.connect(dbname: 'bnb')
    end
    result = connection.exec("INSERT INTO spaces (name, description) VALUES('#{name}', '#{description}') RETURNING id, name, description;")
    Spaces.new(id: result[0]['id'], name: result[0]['name'], description: result[0]['description'])
  end
end