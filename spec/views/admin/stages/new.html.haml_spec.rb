require 'spec_helper'

describe "/admin/stages/new" do
  before(:each) do
    render 'admin/stages/new'
  end

  #Delete this example and add some real ones or delete this file
  it "should tell you where to find the file" do
    response.should have_tag('p', %r[Find me in app/views/admin/stages/new])
  end
end
