# in lib/user.rb

# require 'database_connection'
require 'pg'

class User
  def self.create(email:, password:)
    

    if ENV['ENVIRONMENT'] == 'test'
         connection = PG.connect(dbname: 'bnb_test')
       else
         connection = PG.connect(dbname: 'bnb')
      end
      #result =   connection.exec("INSERT INTO users (email, password) VALUES ('test@example.com', 'test')")
    p result =  connection.exec("INSERT INTO users (email, password) VALUES ('#{email}', '#{password}') returning id, email")
     
    User.new(id: result[0]['id'], email: result[0]['email'])
  end

  attr_reader :id, :email

  def initialize(id:, email:)
    @id = id
    @email = email
  end
end
