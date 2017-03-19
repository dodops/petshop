require "rails_helper"

RSpec.describe DogsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/dogs").to route_to("dogs#index")
    end

    it "routes to #show" do
      expect(:get => "/dogs/1").to route_to("dogs#show", :id => "1")
    end
  end
end
