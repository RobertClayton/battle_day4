def sign_in_and_play
  visit('/')
  fill_in('player1', with: 'Marco')
  fill_in('player2', with: 'Robert')
  click_on('Submit')
end

def attack
  visit('/')
  fill_in('player1', with: 'Marco')
  fill_in('player2', with: 'Robert')
  click_on('Submit')
end
