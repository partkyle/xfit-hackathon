require 'spec_helper'

describe "workouts/edit.html.erb" do
  before(:each) do
    @workout = assign(:workout, stub_model(Workout,
      :title => "MyString",
      :time_limit => 1
    ))
  end

  it "renders the edit workout form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => workouts_path(@workout), :method => "post" do
      assert_select "input#workout_title", :name => "workout[title]"
      assert_select "input#workout_time_limit", :name => "workout[time_limit]"
    end
  end
end
