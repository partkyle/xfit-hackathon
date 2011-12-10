require 'spec_helper'

describe "workouts/show.html.erb" do
  before(:each) do
    @workout = assign(:workout, stub_model(Workout,
      :title => "Title",
      :time_limit => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
