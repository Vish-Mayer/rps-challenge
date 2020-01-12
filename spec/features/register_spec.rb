feature 'user enters their name' do
  scenario 'enter name to play game' do
    visit('/')
    fill_in :player_1_name, with: 'Player 1'
    click_button 'Submit'
    expect(page).to have_content 'Player 1' 
  end
end