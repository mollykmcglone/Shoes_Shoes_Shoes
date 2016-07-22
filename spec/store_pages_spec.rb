require('spec_helper')

describe('the store route', :type => :feature) do
  it "takes user to the main store page" do
    visit '/'
    click_link 'Go to Stores'
    expect(page).to have_content('Stores')
  end
end
