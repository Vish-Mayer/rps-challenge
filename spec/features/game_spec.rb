feature 'it starts a game of rock, paper, scissors' do
  PLAY_SEED = 3 
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

  scenario 'game chooses a hand' do
    click_button 'Rock'
    message = find(:css, '#computer').text 
    expect(possible_choice).to include message 
  end

  scenario 'computer chooses a random hand' do 
    srand(PLAY_SEED)
    click_button 'Rock'
    expect(page).to have_content 'Computer chooses Scissors!'
  end 

  def possible_choice
    [:Rock, :Paper, :Scissors].map { |hand| "Computer chooses #{hand}!"}
  end 
  
end