# feature 'add a caption' do
#   before(:each) do
#     @user = create_user
#     # @media = create_a_media_record({user_id: @user.id})
#     # sleep(4)
#
#
#
#   end
#
#   scenario 'a visitor can add a caption' do
#
#     login_a_user(@user)
#     expect(page).to have_content("Welcome")
#     click_on "Add Media"
#     expect(page).to have_content("Add Image")
#     # click_on "Choose File"
#     expect(page).to have_css('#medium_s3_media_loc')
#     click_button "Choose File"
#     # within '.new_caption' do
#     #   fill_in 'title', with: "This is my caption"
#     # end
#     # expect(page).to have_content("This is it")
#   end
#
#
# end