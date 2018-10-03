require 'rails_helper'

RSpec.describe "Welcome" do

  it "greets the user" do
    visit root_path
    expect(page).to have_content("Welcome To Escape!")
  end

end
