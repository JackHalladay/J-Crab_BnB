require 'pg'

class Spaces

  def self.view
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'bnb_test')
    else
      connection = PG.connect(dbname: 'bnb')
    end
    result = connection.exec("SELECT * FROM spaces ORDER BY name asc;")
    result.map { |space| space['name'] }
  end

  def self.create(name:)
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'bnb_test')
    else
      connection = PG.connect(dbname: 'bnb')
    end
    result = connection.exec("INSERT INTO spaces (name) VALUES('#{name}') RETURNING name;")
  end
end