

feature 'Enter names' do
  scenario 'Players can enter their names and see them on the screen' do
    visit('/')
    fill_in('player1', with: 'Marco')
    fill_in('player2', with: 'Robert')
    click_on('Submit')
    expect(page).to have_content('Marco VS Robert')
  end
end
#to_not
