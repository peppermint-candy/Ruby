require 'rails_helper'
RSpec.describe LikesController, type: :controller do
  before do
    @user = create_user
  end

  describe "when not logged in" do
    before do
      session[:user_id] = nil
    end

    it 'cannot click like' do
      post :create, id: @user
      expect(response).to redirect_to('/sessions/new')
    end

    it "cannot click unlike" do
      delete :destroy, id: @user
      expect(response).to redirect_to('/sessions/new')
    end
  end

  describe "when signed in as the wrong user" do
    before do
      @wrong_user = create_user 'julius', 'julius@lakers.com'
      session[:user_id] = @wrong_user.id
    end

    it 'cannot click like' do
      post :create, id: @user
      expect(response).to redirect_to("/users/#{@wrong_user.id}")
    end

    it "cannot click unlike" do
      delete :destroy, id: @user
      expect(response).to redirect_to("/users/#{@wrong_user.id}")
    end
  end

end
