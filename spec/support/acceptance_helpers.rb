module AcceptanceHelpers
  def login(user)
    visit new_user_session_path
    fill_in 'E-mail', with: user.email
    fill_in 'Heslo', with: user.password
    click_on 'Log in'
  end
end
