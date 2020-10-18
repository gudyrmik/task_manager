require 'rails_helper'

feature 'User can switch task scopes', %q{
  In order to filter my tasks
  As an authenticated user
  I'de like to be able to switch their scopes
} do

  given(:user) { create(:user) }
  given!(:task1) { create(:task, title: 'Incompleted task 1', user_id: user.id) }
  given!(:task2) { create(:task, title: 'Incompleted task 2', user_id: user.id) }
  given!(:task3) { create(:task, title: 'Completed task', is_done: true, user_id: user.id) }

  describe 'Authenticated user' do

    background do
      login(user)
      visit tasks_path
    end

    scenario 'browses its tasks with default scope - All' do
      expect(page).to have_content('Incompleted task 1')
      expect(page).to have_content('Incompleted task 2')
      expect(page).to have_content('Completed task')
    end

    scenario 'browses its tasks with scope - Incompleted' do
      click_on('Otevrene')
      expect(page).to have_content('Incompleted task 1')
      expect(page).to have_content('Incompleted task 2')
      expect(page).to_not have_content('Completed task')
    end

    scenario 'browses its tasks with scope - Completed' do
      click_on('Uzavrene')
      expect(page).to_not have_content('Incompleted task 1')
      expect(page).to_not have_content('Incompleted task 2')
      expect(page).to have_content('Completed task')
    end

  end

  scenario 'Unauthenticated user attempts to browse tasks' do
    visit tasks_path
    expect(page).to have_content 'Musíte se zaregistrovat nebo přihlásit, pak můžete pokračovat.'
  end

end
