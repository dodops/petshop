require 'rails_helper'

RSpec.describe "Dogs", type: :request do
  describe "GET /dogs" do
    let!(:dog) { create :dog }

    it "works! (now write some real specs)" do
      get dogs_path
      expect(response).to have_http_status(200)
    end

    it 'qualquercoisa' do
      get dogs_path, params: { by_gender: dog.gender }
    end
  end

  describe 'GET /dogs/:id' do
    let!(:dog) { create :dog }

    it "responds with a correct dog" do
      get dog_path(dog)

      expect(response).to have_http_status(200)
    end
  end
end
