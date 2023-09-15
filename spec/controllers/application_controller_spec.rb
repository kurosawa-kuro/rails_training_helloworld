require 'rails_helper'

RSpec.describe ApplicationController, type: :controller do
  describe "GET #hello" do
    it "returns hello world in JSON" do
      get :hello

      p JSON.parse(response.body)
      expect(response).to have_http_status(:success)
      expect(JSON.parse(response.body)).to eq({ "message" => "hello world" })
    end
  end
end
