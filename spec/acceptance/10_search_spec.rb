require 'rails_helper'

feature 'User search data across its tasks, projects and tags', %q{
  In order to find appropriate data
  As an authenticated user
  I'de like to be able to search for keywords
} do

  given(:user) { create(:user) }
  given!(:task) { create(:task, title: 'TaskKeyword', user_id: user.id) }
  given!(:tag) { create(:tag, title: 'TagKeyword', user_id: user.id) }
  given!(:project) { create(:project, title: 'ProjectKeyword', user_id: user.id) }

  describe 'Authenticated user search for a keyword presented in' do

    background { login(user) }

    scenario 'title of a task' do
      fill_in 'query', with: 'TaskKeyword'
      click_on 'Najit'

      expect(page).to have_content("Nalezene vysledky z 'TaskKeyword'")
      expect(page).to have_content('TaskKeyword')
    end

    scenario 'title of a tag' do
      fill_in 'query', with: 'TagKeyword'
      click_on 'Najit'

      expect(page).to have_content("Nalezene vysledky z 'TagKeyword'")
      expect(page).to have_content('TagKeyword')
    end

    scenario 'title of a project' do
      fill_in 'query', with: 'ProjectKeyword'
      click_on 'Najit'

      expect(page).to have_content("Nalezene vysledky z 'ProjectKeyword'")
      expect(page).to have_content('ProjectKeyword')
    end

  end

  scenario 'Unauthenticated user attempts to search' do
    visit tasks_path
    expect(page).to have_content 'Musíte se zaregistrovat nebo přihlásit, pak můžete pokračovat.'
  end

end
