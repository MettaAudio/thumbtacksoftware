require 'spec_helper'

describe "projects/index" do
  before(:each) do
    assign(:projects, [
      stub_model(Project,
        :url => "Url",
        :description => "MyText",
        :responsibilities => "Responsibilities",
        :title => "Title",
        :technology => "Technology",
        :image => "Image",
        :git => "Git"
      ),
      stub_model(Project,
        :url => "Url",
        :description => "MyText",
        :responsibilities => "Responsibilities",
        :title => "Title",
        :technology => "Technology",
        :image => "Image",
        :git => "Git"
      )
    ])
  end

  it "renders a list of projects" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Responsibilities".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Technology".to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
    assert_select "tr>td", :text => "Git".to_s, :count => 2
  end
end
