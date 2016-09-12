require 'rails_helper'

RSpec.describe DojoController, type: :controller do

  it "routes / to the dojo controller" do
    expect(:get => "/").to route_to(:controller => "dojo", :action  => "index")
  end

  it "routes /helllo to the dojo controller" do
    expect(:get => "/hello").to route_to(:controller => "dojo", :action => "world")
  end

  it "routes /ninjas to the dojo controller" do
    expect(:get => "/ninjas").to route_to(:controller => "dojo", :action  => "ninjas")
  end

end
