
def sign_up_user(name)
  visit '/'
  click_on 'Sign Up'
  within('#new-user-signup') do
    fill_in 'Email', with: "#{name.downcase}@gmail.com"
    fill_in 'Password', with: "password"
    click_on 'Submit'
  end
end

def login_a_user(user)

visit '/'
within('.navbar') do
  fill_in 'user_email', with: user.email
  fill_in 'user_password', with: user.password
  click_on 'Login'
end
  end
