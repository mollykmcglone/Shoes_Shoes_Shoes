require('spec_helper')

describe('the brand route', :type => :feature) do
  it "takes user to the brand page" do
    visit '/'
    click_link 'Go to Brands'
    expect(page).to have_content('Brands')
  end

  it "allows a user to add a new brand" do
    visit '/brands'
    fill_in 'name', :with => "Molly's Moccasins"
    click_button 'Go'
    expect(page).to have_content("Molly's Moccasins")
  end
end
