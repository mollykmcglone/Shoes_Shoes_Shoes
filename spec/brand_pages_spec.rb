require('spec_helper')

describe('the brand route', :type => :feature) do
  it "takes user to the brand page" do
    visit '/'
    click_link 'Go to Brands'
    expect(page).to have_content('Brands')
  end
end
