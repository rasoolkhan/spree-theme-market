require "spec_helper"
require "rails_helper"

describe Admin::ItemsController do
  describe "GET #index" do
    include AuthHelper
      
    before do
      @item = FactoryGirl.create(:item)
      get :index
    end
       
    it "redirects a non-logged-in user" do
      expect(response).to have_http_status("302")
    end
    
    it "renders login template" do
      expect(response).to redirect_to(login_path)
    end
  end
  
  # describe "GET #new" do
  #   include AuthHelper
  #   before do
  #     http_login
  #     get :new
  #   end
       
  #   it "responds with status 200" do
  #     expect(response).to have_http_status("200")
  #   end
    
  #   it "renders items/new template" do
  #     expect(response).to render_template("admin/items/new")
  #   end
  # end


# Need to figure out how to make these tests go through my new authentication.
end

