require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe GeocountriesController do

  # This should return the minimal set of attributes required to create a valid
  # Geocountry. As you add validations to Geocountry, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { {  } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # GeocountriesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all geocountries as @geocountries" do
      geocountry = Geocountry.create! valid_attributes
      get :index, {}, valid_session
      assigns(:geocountries).should eq([geocountry])
    end
  end

  describe "GET show" do
    it "assigns the requested geocountry as @geocountry" do
      geocountry = Geocountry.create! valid_attributes
      get :show, {:id => geocountry.to_param}, valid_session
      assigns(:geocountry).should eq(geocountry)
    end
  end

  describe "GET new" do
    it "assigns a new geocountry as @geocountry" do
      get :new, {}, valid_session
      assigns(:geocountry).should be_a_new(Geocountry)
    end
  end

  describe "GET edit" do
    it "assigns the requested geocountry as @geocountry" do
      geocountry = Geocountry.create! valid_attributes
      get :edit, {:id => geocountry.to_param}, valid_session
      assigns(:geocountry).should eq(geocountry)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Geocountry" do
        expect {
          post :create, {:geocountry => valid_attributes}, valid_session
        }.to change(Geocountry, :count).by(1)
      end

      it "assigns a newly created geocountry as @geocountry" do
        post :create, {:geocountry => valid_attributes}, valid_session
        assigns(:geocountry).should be_a(Geocountry)
        assigns(:geocountry).should be_persisted
      end

      it "redirects to the created geocountry" do
        post :create, {:geocountry => valid_attributes}, valid_session
        response.should redirect_to(Geocountry.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved geocountry as @geocountry" do
        # Trigger the behavior that occurs when invalid params are submitted
        Geocountry.any_instance.stub(:save).and_return(false)
        post :create, {:geocountry => {  }}, valid_session
        assigns(:geocountry).should be_a_new(Geocountry)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Geocountry.any_instance.stub(:save).and_return(false)
        post :create, {:geocountry => {  }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested geocountry" do
        geocountry = Geocountry.create! valid_attributes
        # Assuming there are no other geocountries in the database, this
        # specifies that the Geocountry created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Geocountry.any_instance.should_receive(:update).with({ "these" => "params" })
        put :update, {:id => geocountry.to_param, :geocountry => { "these" => "params" }}, valid_session
      end

      it "assigns the requested geocountry as @geocountry" do
        geocountry = Geocountry.create! valid_attributes
        put :update, {:id => geocountry.to_param, :geocountry => valid_attributes}, valid_session
        assigns(:geocountry).should eq(geocountry)
      end

      it "redirects to the geocountry" do
        geocountry = Geocountry.create! valid_attributes
        put :update, {:id => geocountry.to_param, :geocountry => valid_attributes}, valid_session
        response.should redirect_to(geocountry)
      end
    end

    describe "with invalid params" do
      it "assigns the geocountry as @geocountry" do
        geocountry = Geocountry.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Geocountry.any_instance.stub(:save).and_return(false)
        put :update, {:id => geocountry.to_param, :geocountry => {  }}, valid_session
        assigns(:geocountry).should eq(geocountry)
      end

      it "re-renders the 'edit' template" do
        geocountry = Geocountry.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Geocountry.any_instance.stub(:save).and_return(false)
        put :update, {:id => geocountry.to_param, :geocountry => {  }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested geocountry" do
      geocountry = Geocountry.create! valid_attributes
      expect {
        delete :destroy, {:id => geocountry.to_param}, valid_session
      }.to change(Geocountry, :count).by(-1)
    end

    it "redirects to the geocountries list" do
      geocountry = Geocountry.create! valid_attributes
      delete :destroy, {:id => geocountry.to_param}, valid_session
      response.should redirect_to(geocountries_url)
    end
  end

end
