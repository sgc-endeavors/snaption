feature 'add image' do

  scenario 'a logged in user can add a picture' do

    sign_up_user("Gerard")
    click_on "Add Media"
    expect(page).to have_content("Add Image or Video")
  end

end