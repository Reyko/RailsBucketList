require 'spec_helper'

describe DestinationsController, :type => :controller do


  describe "POST to create" do
    context "with valid data" do
      before do
        # Setup goes here...
        @country = Faker::Address.country
        params = {
          :destination => {
            :name => @country
          }
        }

        post :create, params
      end

      it "should create a Destination" do
        expect(Destination.count).to eq(1)
      end

      it "should set an instance variable @destination" do
        expect(assigns(:destination).name).to eq(@country)
      end


      it "should be redirected to the show page" do
        expect(response).to redirect_to(destination_path(assigns(:destination)))
      end 


      it "should set a flash notice" do
        expect(flash[:notice]).to match(/Record Saved/)
      end

    end

    context "without valid data" do
      before do 
        params = {
          :destination => {
            :name => ""
          }
        }

        post :create, params
      end

      it "should create a Destination" do
        expect(Destination.count).to eq(0)
      end

      it "should be redirected to the show page" do
        expect(response).to render_template("new")
      end
 

    end

  end


# Run this with:
# rspec  rspec spec/controllers/destinations_controller_spec.rb -e "GET to index"
  describe "GET to show" do
    before do
      @destination = Destination.create(:name => Faker::Address.country)
      get :show, :id => @destination.id
    end

    it "should display the show page" do
      expect(assigns(:destination)).to eq(@destination)
      expect(response).to render_template("show")
    end
  end




  describe "GET to index" do
    before do
      get :index
    end

    it "should display the index page" do
      expect(response).to render_template("index");
    end

    # it "should have some destinations" do
    #   expect(response).to
    # end

  end





end



