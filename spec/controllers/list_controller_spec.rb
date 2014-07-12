require 'spec_helper'

describe ListController do

  describe "GET #show" do
    it "assigns the requested List to @list" do
      list = FactoryGirl.create(:list)
      get :show, id: list
      assigns(:list).should eq(list)
    end

    xit "renders @list as JSON" do
    end
  end

  describe "POST #create" do
    context "with valid attributes" do
      xit "creates a new List" do
        expect { post :create, list: FactoryGirl.attributes_for(:list)
        }.to change(List, :count).by(1)
      end
    end

    context "with invalid attributes" do
      it "does not create a new list" do
        expect { post :create, list: FactoryGirl.attributes_for(:invalid_list)
        }.to_not change(List, :count)
      end
    end
  end

  describe "PUT #update" do
    before :each do
      @list = FactoryGirl.create(:list, name: "mylist", user_id: "2")
    end
    context "valid attributes" do
      xit "locates the requested @list" do
        put :update, id: @list, list: FactoryGirl.attributes_for(:list)
        assigns(:list).should eq(@list)
      end
      xit "changes @list's attributes" do
        put :update, id: @list, list: FactoryGirl.attributes_for(:list, name: "changed_name", user_id: "2")
        @list.reload
        @list.name.should eq("changed_name")
      end
    end

    context "invalid attributes" do
      xit "does not change @list's attributes" do
      end
    end
  end



end
