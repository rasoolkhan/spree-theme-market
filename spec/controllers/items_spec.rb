require "spec_helper"
require "rails_helper"

describe ItemsController do
  describe "GET index page" do
    it "responds with status 200" do
      get :index
      expect(response).to have_http_status("200")
    end
    it "renders items/index template" do
      get :index
      expect(response).to render_template("index")
    end
  end
end