require "rails_helper"

describe "Ninja" do
  it "prompts for the ninja fields" do
    visit "/"
    expect(page).to have_field('name')
    expect(page).to have_field('description')
  end

  it "creates ninja and redirects to success page" do
    visit "/"
    fill_in "name", with: "Luke"
    fill_in "description", with: "Shall the force be with you"
    click_button "Submit"
    expect(current_path).to eq("/success")
    expect(page).to have_text("Form submitted successfully")
  end

  it "flash the warning when ninja doesn't meet the requirements" do
    visit "/"
    fill_in "name", with: ""
    fill_in "description", with: "abc"
    click_button "Submit"
    expect(current_path).to eq("/")
  end
end
