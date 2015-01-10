require 'spec_helper'

describe HelpController do

  describe "GET 'getting_started'" do
    it "returns http success" do
      get 'getting_started'
      response.should be_success
    end
  end

  describe "GET 'cities'" do
    it "returns http success" do
      get 'cities'
      response.should be_success
    end
  end

  describe "GET 'contacts'" do
    it "returns http success" do
      get 'contacts'
      response.should be_success
    end
  end

  describe "GET 'communications'" do
    it "returns http success" do
      get 'communications'
      response.should be_success
    end
  end

  describe "GET 'task_assignments'" do
    it "returns http success" do
      get 'task_assignments'
      response.should be_success
    end
  end

  describe "GET 'successes'" do
    it "returns http success" do
      get 'successes'
      response.should be_success
    end
  end

  describe "GET 'reports'" do
    it "returns http success" do
      get 'reports'
      response.should be_success
    end
  end

  describe "GET 'users'" do
    it "returns http success" do
      get 'users'
      response.should be_success
    end
  end

end
