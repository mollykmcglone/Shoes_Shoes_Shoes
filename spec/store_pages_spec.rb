require('spec_helper')

describe('the store route', :type => :feature) do
  it "takes user to the main store page" do
    visit '/'
    click_link 'Go to Stores'
    expect(page).to have_content("You don't have any stores yet.")
  end

  it "allows a user to add a new store" do
    brand = Brand.create({:name => "Molly's Moccasins"})
    visit '/stores'
    fill_in 'name', :with => "Shoe Crazy"
    check "brand_ids[]"
    click_button 'Go'
    expect(page).to have_content("Shoe Crazy")
  end
end
