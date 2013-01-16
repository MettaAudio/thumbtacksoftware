require 'spec_helper'

describe "projects/show" do
  before(:each) do
    @project = assign(:project, stub_model(Project,
      :url => "Url",
      :description => "MyText",
      :responsibilities => "Responsibilities",
      :title => "Title",
      :technology => "Technology",
      :image => "Image",
      :git => "Git"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Url/)
    rendered.should match(/MyText/)
    rendered.should match(/Responsibilities/)
    rendered.should match(/Title/)
    rendered.should match(/Technology/)
    rendered.should match(/Image/)
    rendered.should match(/Git/)
  end
end
