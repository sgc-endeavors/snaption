feature 'landing page' do

  scenario 'it includes a navbar' do
    visit '/'
    within ('.navbar') do
      expect(page).to have_content("Snaption")
      expect(page).to have_button("Login")
      expect(page).to have_link("Sign Up")

    end
  end

  scenario 'a visitor can sign up' do
    sign_up_user('gerard')
    expect(page).to have_content("Thanks for registering gerard@gmail.com")
    within('.navbar') do
      expect(page).to have_link("Logout")
      expect(page).not_to have_link("Sign Up")
    end
  end



  scenario 'a registered user can login' do
    user = create_user
    login_a_user(user)
    expect(page).to have_content("Welcome #{user.email}")
    within('.navbar') do
      expect(page).to have_link('Add Media')
    end
  end











end