require 'spec_helper'


describe "Post pages" do

  subject { page }
describe "profile page" do
  let(:post) { FactoryGirl.create :post }
  before { visit post_path(post) }

  it { should have_selector('h1',    text: post.title) }
  it { should have_selector('title', text: post.title) }
end

end