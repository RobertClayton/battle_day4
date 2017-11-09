feature 'Enter names' do
  scenario 'Players can enter their names and see them on the screen' do
    sign_in_and_play
    expect(page).to have_content('Marco VS Robert')
  end
end

feature 'hit points' do
  scenario 'View hit point on the screen' do
    sign_in_and_play
    expect(page).to have_content('Robert HP = 100')
  end
end

feature 'attack player 2' do
  scenario 'Reduce hit points via attack button' do
    sign_in_and_play
    click_on('Attack')
    expect(page).to have_content('Robert HP = 90')
  end
end
