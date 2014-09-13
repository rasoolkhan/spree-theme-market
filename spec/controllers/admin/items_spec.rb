require "spec_helper"
require "rails_helper"

describe Admin::ItemsController do
  describe "#index" do
    before do
      # Below I am trying to make something to overcome our http authentication
      # It doesn't work, so in my files I comment out the authentication line in 
      # admin_controller.rb
      
      # allow_any_instance_of(AdminController).to receive(:http_basic_authenticate_with) { true }
      @item = FactoryGirl.create(:item)
      get :index
    end
       
    it "responds with status 200" do
      expect(response).to have_http_status("200")
    end
    
    it "renders items/index template" do
      expect(response).to render_template("index") or admin/items/index
    end

    it "loads all of the items" do
      # This test does not pass and I can't figure out why.
      expect(assigns(:item_presenters)).to eq([])
    end
  end
  
  describe "#new" do
    before do
      # allow_any_instance_of(AdminController).to receive(:http_basic_authenticate_with) { true }
      get :new
    end
       
    it "responds with status 200" do
      expect(response).to have_http_status("200")
    end
    
    it "renders items/new template" do
      expect(response).to render_template("new") or admin/items/new
    end
  end
    
  describe "#create" do
  end

  describe "#show" do 
  end
  
  describe "#edit" do

  end
  
  describe "#delete" do

  end
end

