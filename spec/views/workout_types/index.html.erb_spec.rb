require 'spec_helper'

describe "workout_types/index.html.erb" do
  before(:each) do
    assign(:workout_types, [
      stub_model(WorkoutType,
        :name => "Name"
      ),
      stub_model(WorkoutType,
        :name => "Name"
      )
    ])
  end

  it "renders a list of workout_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
