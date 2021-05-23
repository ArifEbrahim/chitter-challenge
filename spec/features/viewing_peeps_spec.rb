# As a maker
# So that I can see what others are saying  
# I want to see all peeps in reverse chronological order

feature 'viewing messages' do
  scenario 'a user can see messages' do
    Message.create("This is my first peep!", "Bob")
    Message.create("Second peep!", "Bob")
    Message.create("Third peep peeps!", "Bob")

    visit('/chitter')

    expect(page).to have_content "This is my first peep!"
    expect(page).to have_content "Second peep!"
    expect(page).to have_content "Third peep peeps!"
    
  end
  
end