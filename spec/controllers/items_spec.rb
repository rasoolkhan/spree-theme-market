require "spec_helper"
require "rails_helper"

describe ItemsController do
  describe "GET index page" do
    before { get :index}
    it "responds with status 200" do
      expect(response).to have_http_status("200")
    end
    it "renders items/index template" do
      expect(response).to render_template("index")
    end
  end
end