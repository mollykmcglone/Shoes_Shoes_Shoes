require("spec_helper")

describe(Store) do
  it("validates presence of name") do
    store = Store.new({name => ''})
    expect(store.save()).to(eq(false))
  end

  it("saves store names in title case") do
    store = Store.new({name => "shoes by sue"})
    store.save()
    expect(store.name()).to(eq("Shoes by Sue"))
  end

  describe("#brands") do
    it("has many brands") do
      store = Store.create({:name => "Shoes by Sue"})
      brand1 = Brand.create({:name => "Molly's Moccasins"})
      brand2 = Brand.create({:name => "Gary's Galoshes"})
      expect(store.shoes()).to(eq([brand1, brand2]))
    end
  end
end
