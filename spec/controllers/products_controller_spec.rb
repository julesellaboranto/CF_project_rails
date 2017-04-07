require 'rails_helper' 
describe ProductsController, :type => :controller do
  before do 
    admin.confirm
    user.confirm
  end
  
  describe 'Get product' do 
    before do 
      @product = FactoryGirl.create(:product)
      @product2 = FactoryGirl.create(:product)
    end
    
    context 'products' do

      it "loads correct products" do 
        get :index
        expect(response).to have_http_status(200)

      it "displays all products on product index page" do 
        get :index
        expect(assigns(:product)).to eq Product.all 	
      end
    end

context 'logged in with admin' do 
  before do 
    sign_in admin
  end

  it 'creates new product' do 
    post :new
    expect(assigns(:product)).to be_a_new(Product)
  end
end
context "using non-admin user" do	
  before do
    sign_in user
  end

  it "does not create a new product" do
    post :new
    expect(response).to have_http_status(302)
    expect(response).to redirect_to(root_path)
  end
end
end
