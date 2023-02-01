require "application_system_test_case"

class UserJourneysTest < ApplicationSystemTestCase
  test "visiting home page" do
    visit root_url
    assert_selector "h1", text: "Create a movie list !"
  end

  test "visiting login page" do
    visit new_user_session_url
    assert_selector "h1", text: "Log in"
  end

  test "visiting signup page" do
    visit new_user_registration_url
    assert_selector "h1", text: "Sign up"
  end

  test "a signed in user can create a new list" do
    login_as users(:giovanni)
    visit new_list_url
    # save_screenshot

    fill_in "Name", with: "Fiction Masterpieces"
    # save_screenshot

    click_on "Create list"
    # save_screenshot

    assert_selector "h1", text: "How would you like to name your list?"
  end
end
