feature 'it starts a game of rock, paper, scissors' do
  before do 
    visit('/')
    fill_in :player_1_name, with: 'Player 1'
    click_button 'Submit'
  end 

  

  scenario 'it shows the available hands' do
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
    expect(page).to have_button 'Rock'

  end

  scenario 'it chooses a hand' do
    click_button 'Rock'
    expect(page).to have_content 'Your choice is Rock!'
  end
end