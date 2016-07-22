require('spec_helper')

describe('the store route', :type => :feature) do
  it "takes user to the main store page" do
    visit '/'
    click_link 'Go to Stores'
    expect(page).to have_content('Stores')
  end

  it "allows a user to add a new store" do
    visit '/stores'
    fill_in 'name', :with => "Shoe Crazy"
    click_button 'Go'
    expect(page).to have_content("Shoe Crazy")
  end
end
