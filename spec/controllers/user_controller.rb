require 'rails_helper'
  describe UserController, :type => :controller do 
    before do
      @user = User.create!(email: 'testemail@test.com', password: '123456')}
      @user2 = User.create!(email: '2testemail@test.com', password: '654321')}

    describe 'GET #show' do
      context 'User is logged in' do
        before do 
          sign_in @user
        end
      end
    
    it 'no access to user2 show page' do
      get :show, id: @user2.id
      expect(response).to redirect_to(root_path)
    end

    it 'loads correct user details'
      get :show, id: @user.id
      expect(response).to have_http_status(200)
      expect(assigns(:user)).to eq @user

      context 'No user is logged in' do
        it 'redirects to login' do
          get :show, id: user.id
          expect(response).to redirect_to(root_path)
        end
      end
    end
end


