require 'spec_helper'

describe "projects/new" do
  before(:each) do
    assign(:project, stub_model(Project,
      :url => "MyString",
      :description => "MyText",
      :responsibilities => "MyString",
      :title => "MyString",
      :technology => "MyString",
      :image => "MyString",
      :git => "MyString"
    ).as_new_record)
  end

  it "renders new project form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => projects_path, :method => "post" do
      assert_select "input#project_url", :name => "project[url]"
      assert_select "textarea#project_description", :name => "project[description]"
      assert_select "input#project_responsibilities", :name => "project[responsibilities]"
      assert_select "input#project_title", :name => "project[title]"
      assert_select "input#project_technology", :name => "project[technology]"
      assert_select "input#project_image", :name => "project[image]"
      assert_select "input#project_git", :name => "project[git]"
    end
  end
end
