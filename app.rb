require("bundler/setup")
Bundler.require(:default)

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get ('/') do
  @stores = Store.all()
  @brands = Brand.all()
  erb(:index)
end

get ('/brands') do
  @stores = Store.all()
  @brands = Brand.all()
  erb(:brands)
end

get ('/stores') do
  @stores = Store.all()
  @brands = Brand.all()
  erb(:stores)
end

post('/brands/new') do
  name = params['name']
  @new_brand = Brand.new({:name => name})
  @brands = Brand.all()
  if @new_brand.save()
    redirect("/brands/".concat(@new_brand.id().to_s()))
  else
    erb(:errors)
  end
end

get('/brands/:id') do
  @brand = Brand.find(params.fetch('id').to_i())
  @brands = Brand.all()
  @stores = Store.all()
  erb(:brand)
end
