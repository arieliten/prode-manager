require 'spec_helper'

describe "/admin/stages/index" do
  before(:each) do
    render 'admin/stages/index'
  end

  #Delete this example and add some real ones or delete this file
  it "should tell you where to find the file" do
    response.should have_tag('p', %r[Find me in app/views/admin/stages/index])
  end
end
