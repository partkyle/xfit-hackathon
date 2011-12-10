require "spec_helper"

describe WorkoutTypesController do
  describe "routing" do

    it "routes to #index" do
      get("/workout_types").should route_to("workout_types#index")
    end

    it "routes to #new" do
      get("/workout_types/new").should route_to("workout_types#new")
    end

    it "routes to #show" do
      get("/workout_types/1").should route_to("workout_types#show", :id => "1")
    end

    it "routes to #edit" do
      get("/workout_types/1/edit").should route_to("workout_types#edit", :id => "1")
    end

    it "routes to #create" do
      post("/workout_types").should route_to("workout_types#create")
    end

    it "routes to #update" do
      put("/workout_types/1").should route_to("workout_types#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/workout_types/1").should route_to("workout_types#destroy", :id => "1")
    end

  end
end
