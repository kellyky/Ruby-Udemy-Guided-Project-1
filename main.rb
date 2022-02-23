require_relative 'crud'

users = [
  { username: "kelly", password: "password1" },
  { username: "otto", password: "password2" },
  { username: "archer", password: "password3" },
  { username: "masha", password: "password4" },
  { username: "chester", "password": "password5"}
]

hashed_users = Crud.create_secure_users(users)
puts hashed_users
