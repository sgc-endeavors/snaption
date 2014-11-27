def create_user(updated_attributes = {})
  default_attributes = {
    email: 'gerard@gmail.com',
    password: 'password'
  }

  attributes = default_attributes.merge(updated_attributes)

  User.create!(attributes)

end


def create_a_media_record(updated_attributes = {})
  default_attributes = {
    categories: nil,
    user_id: 1,
    s3_media_loc: "poker_chip.gif",
    inactive: nil
  }

  attributes = default_attributes.merge(updated_attributes)

  Medium.create!(attributes)
end