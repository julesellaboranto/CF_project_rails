require 'rails_helper'

describe UsersController, :type => :controller do
  before do
      @user = FactoryGirl.create(:user)
      @user2 = FactoryGirl.create(:user, last_name: "User2", email: "2testemail@test.com")
      #@user = User.create!(email: 'testemail@test.com', password: '123456')
      #@user2 = User.create!(email: '2testemail@test.com', password: '654321')
  end
    describe 'GET #show' do
      context 'User is logged in' do
        before do 
          sign_in @user
        end

        it "loads correct user details" do
          get :show, params:{id: @user.id}
          expect(response).to have_http_status(200)
          expect(assigns(:user)).to eq @user
        end
    end 

    context 'No user is logged in' do
      it 'redirects to login' do
       get :show, id: @user.id
       expect(response).to redirect_to(root_path) 
      end
    end
    
    it 'no access to user2 show page' do
      get :show, id: @user2.id
      expect(response).to redirect_to(root_path)
    end

  end
end


