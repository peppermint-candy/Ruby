require 'rails_helper'

RSpec.describe DojosController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      expect(:get => "/").to route_to("dojos#index")
    end
  end

  describe "GET #world" do
    it "returns http success" do
      expect(:get => "/hello").to route_to("dojos#world")
    end
  end

  describe "GET #ninjas" do
    it "returns http success" do
      expect(:get => "/ninjas").to route_to("dojos#ninjas")
    end
  end

end
