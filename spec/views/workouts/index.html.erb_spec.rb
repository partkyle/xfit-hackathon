require 'spec_helper'

describe "workouts/index.html.erb" do
  before(:each) do
    assign(:workouts, [
      stub_model(Workout,
        :title => "Title",
        :time_limit => 1
      ),
      stub_model(Workout,
        :title => "Title",
        :time_limit => 1
      )
    ])
  end

  it "renders a list of workouts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
