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
