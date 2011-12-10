require 'spec_helper'

describe "workout_types/new.html.erb" do
  before(:each) do
    assign(:workout_type, stub_model(WorkoutType,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new workout_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => workout_types_path, :method => "post" do
      assert_select "input#workout_type_name", :name => "workout_type[name]"
    end
  end
end
