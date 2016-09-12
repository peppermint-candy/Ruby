require 'rails_helper'
describe "User" do
  it "prompts for the user fields" do
    visit "/"
    expect(page).to have_field('First_name')
    expect(page).to have_field('Last_name')
    expect(page).to have_field('Email')
    expect(page).to have_field('Password')
    expect(page).to have_field('Password_Confirmation')
  end
  it "creates user and redirects to user's page" do
    visit "/"
    fill_in "First_name", with: "Luke"
    fill_in "Last_name", with: "Skywalker"
    fill_in "Email", with: "sky@walker.com"
    fill_in "Password", with: "forceawakened"
    fill_in "Password_Confirmation", with: "forceawakened"
    click_button "Register"
    user = User.last
    expect(current_path).to eq("/users/#{user.id}")
    expect(page).to have_text("Luke Skywalker")
  end
end
