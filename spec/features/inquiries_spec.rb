require 'rails_helper'

RSpec.feature "Inquiries", type: :feature do
  scenario 'A form should be presented on the page' do
    visit contact_path
    expect(page).to have_selector('form')
  end
end



RSpec.feature "Inquiries", type: :feature do
  scenario 'A user can complete and submit the form' do
    visit contact_path

    fill_in 'Message', with: "This is the message I sent"

    click_button 'Send message'

    expect(page).to have_content('Thank you')
  end
end