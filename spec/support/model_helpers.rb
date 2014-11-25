def create_user(updated_attributes = {})
  default_attributes = {
    email: 'gerard@gmail.com',
    password: 'password'
  }

  attributes = default_attributes.merge(updated_attributes)

  User.create!(attributes)

end