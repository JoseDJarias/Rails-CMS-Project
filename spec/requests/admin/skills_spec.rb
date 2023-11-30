require 'rails_helper'

RSpec.describe "Admin::Skills", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/admin/skills/index"
      expect(response).to have_http_status(:success)
    end
  end

end
