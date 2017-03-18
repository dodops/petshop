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

  describe 'GET /dogs/new' do
    it 'responds with success' do
      get new_dog_path

      expect(response).to have_http_status(200)
    end
  end

  describe 'POST /dogs' do
    let(:valid_attributes) { build(:dog).attributes }

    it 'creates a new dog' do
      expect{
        post '/dogs', params: { dog: valid_attributes }
      }.to change(Dog, :count).by(1)
    end
  end
end
