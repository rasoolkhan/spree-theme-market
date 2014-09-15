require "spec_helper"
require "rails_helper"

describe Admin::ItemsController do
  describe "GET #index" do
    include AuthHelper
      
    before do
      http_login
      @item = FactoryGirl.create(:item)
      get :index
    end
       
    it "responds with status 200" do
      expect(response).to have_http_status("200")
    end
    
    it "renders items/index template" do
      expect(response).to render_template("admin/items/index")
    end

    it "loads all of the items" do
      # This test does not pass and I can't figure out why.
      expect(assigns(:item_presenters)).to eq(ItemPresenter.new(@item))
    end
  end
  
  describe "GET #new" do
    include AuthHelper
    before do
      http_login
      get :new
    end
       
    it "responds with status 200" do
      expect(response).to have_http_status("200")
    end
    
    it "renders items/new template" do
      expect(response).to render_template("admin/items/new")
    end
  end
    
  describe "#create" do
    include AuthHelper
    before do
      http_login
    end
  end

  describe "GET #show" do 
    include AuthHelper
    before do
      http_login
      get :show
    end
  end
  
  describe "GET #edit" do
    include AuthHelper
    before do
      http_login
      get :edit
    end
  end
  
  describe "#destroy" do
    include AuthHelper
    before do
      http_login
    end
  end
end

