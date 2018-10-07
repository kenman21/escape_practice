require 'rails_helper'

RSpec.describe "Welcome" do

  before(:each) do
    @user = User.create(name: 'name', password: 'password')

    visit login_path

    fill_in "Name", with: @user.name
    fill_in "Password", with: @user.password

    click_button 'Login'
  end

  it "can log the user out" do
    click_link "Logout"

    expect(page).to have_content("Login") 
  end

  it "greets the user" do
    visit root_path
    expect(page).to have_content("Welcome To Escape!")
  end

  it "creates a new post" do
    click_link "Post Item"

    fill_in "Name", with: "new name"
    fill_in "Description", with: "new description"
    fill_in "Price", with: 100

    click_button "Post Item"

    expect(page).to have_content("new name")
  end



end
