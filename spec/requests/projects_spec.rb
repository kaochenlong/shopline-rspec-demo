require 'rails_helper'

RSpec.describe "Projects", type: :request do
  describe "專案相關" do
    it "can display index page" do
      get projects_path

      expect(response).to have_http_status(:success)
      expect(response.body).to include "Hello World"
    end

    it "new 頁面需要登入" do
      get new_project_path

      expect(response).to redirect_to '/users/sign_in'
    end

    it "如果有登入的話可以看到頁面" do
      user = create(:user)
      sign_in user
      get new_project_path

      expect(response.body).to include '新增專案'
    end
  end
end
