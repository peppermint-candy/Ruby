require 'rails_helper'

RSpec.describe NinjasController, type: :controller do

  it "routes to #index" do
    expect(:get => "/").to route_to(:controller => "ninjas" , :action => "index")
  end

  it "routes to #create " do
    expect(:post => "/create").to route_to(:controller => "ninjas", :action => "create")
  end

  it "routes to #success" do
    expect(:get => "/success").to route_to(:controller => "ninjas", :action => "success")
  end


  # describe "GET #create" do
  #   it "returns http success" do
  #     get :create
  #     expect(response).to have_http_status(:success)
  #   end
  # end
  #
  # describe "GET #success" do
  #   it "returns http success" do
  #     get :success
  #     expect(response).to have_http_status(:success)
  #   end
  # end

end
