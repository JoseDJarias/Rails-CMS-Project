require 'rails_helper'

RSpec.describe "User::Contacts", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/user/contacts/index"
      expect(response).to have_http_status(:success)
    end
  end

end
