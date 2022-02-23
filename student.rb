require_relative 'crud'

class Student
  include Crud
  attr_accessor :first_name, :last_name, :email, :username, :password

  def initialize(firstname, lastname, email, username, password)
    @first_name = firstname
    @last_name = lastname
    @username = username
    @email = email
    @password = password
  end

  def to_s
    "First name: #{@first_name}, Last name: #{@last_name}, Username: #{@username}, email address: #{@email}"
  end

end

kelly = Student.new("Kelly", "Young", "kell", "kel@example.com", "password1")
john = Student.new("John", "Doe", "jj", "jj@example.com", "password2")

hashed_password = kelly.create_hash_digest(kelly.password)
puts hashed_password
