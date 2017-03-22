require 'rails_helper'
  describe Product do
    context "when the product has comments" do
      before do
        @product = Product.create!(name: "Saddle", description: "Saddle for bikes", colour: "brown", image_url: "https://s24.postimg.org/sl6sdqfs5/Sattel.jpg",  price: 99 )
        @user = User.create!(email:"jfl-@gmx.de", password: "123456" )
        @product.comments.create!(rating: 1, user: @user, body: "Awful saddle!")
        @product.comments.create!(rating: 5, user: @user, body: "nice saddle!")
        @product.comments.create!(rating: 3, user: @user, body: "like this saddle")
      end
      it "returns the average rating of all comments" do
        expect(@product.average_rating).to eq 3
      end

      it "is not valid" do
        expect(Product.new(description: "Nice bike")).not_to be_valid
      end
  end
end


