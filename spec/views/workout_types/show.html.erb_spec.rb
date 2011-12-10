require 'spec_helper'

describe "workout_types/show.html.erb" do
  before(:each) do
    @workout_type = assign(:workout_type, stub_model(WorkoutType,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
