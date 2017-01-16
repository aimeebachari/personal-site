require 'rails_helper'


RSpec.describe do
  it "should see string on page" do
    visit '/'

    expect(page).to have_content "Yay! You’re on Rails!"
  end
end
