require "spec_helper"
require "rails_helper"

describe ItemsController do
  describe "#index" do
    subject { get :index }

    specify { should render_template("index") }
  end
  
  describe "GET index" do
    it "has a 200 status code" do
      get :index
      response.code.should eq("200")
    end
  end
end