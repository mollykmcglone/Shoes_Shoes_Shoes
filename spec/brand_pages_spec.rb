require('spec_helper')

describe('the brand route', :type => :feature) do
  it "takes user to the brand page" do
    visit '/'
    click_link 'Go to Brands'
    expect(page).to have_content("You don't have any brands yet.")
  end

  it "allows a user to add a new brand" do
    store = Store.create({:name => "Shoe Crazy"})
    visit '/brands'
    fill_in 'name', :with => "Molly's Moccasins"
    check 'store_ids[]'
    click_button 'Add Brand'
    expect(page).to have_content("Molly's Moccasins")
  end

  it "allows a user to edit a brand's name" do
    store = Store.create({:name => "Shoe Crazy"})
    brand = Brand.create({:name => "Molly's Moccasins"})
    visit '/brands'
    click_link "Molly's Moccasins"
    click_link "Edit Molly's Moccasins"
    fill_in 'name', :with => "Miss Molly's Moccasins"
    click_button 'Submit'
    expect(page).to have_content("Miss Molly's Moccasins")
  end
end
