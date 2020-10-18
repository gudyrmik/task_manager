require 'rails_helper'

feature 'User see only its data', %q{
  In order to properly organize my environment
  As an authenticated user
  I'de like to see only my data
} do

  given!(:user1) { create(:user) }
  given!(:user2) { create(:user) }
  given!(:task1) { create(:task, title: 'My task', user_id: user1.id) }
  given!(:task2) { create(:task, title: 'Other task', user_id: user2.id) }

  scenario 'Authenticated user browses its tasks' do
    login(user1)
    visit tasks_path

    expect(page).to have_content('My task')
    expect(page).to_not have_content('Other task')
  end

  scenario 'Unauthenticated user attempts to browse tasks' do
    visit tasks_path
    expect(page).to have_content 'Musíte se zaregistrovat nebo přihlásit, pak můžete pokračovat.'
  end
end
