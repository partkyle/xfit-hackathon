require 'spec_helper'

describe "workout_types/edit.html.erb" do
  before(:each) do
    @workout_type = assign(:workout_type, stub_model(WorkoutType,
      :name => "MyString"
    ))
  end

  it "renders the edit workout_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => workout_types_path(@workout_type), :method => "post" do
      assert_select "input#workout_type_name", :name => "workout_type[name]"
    end
  end
end
