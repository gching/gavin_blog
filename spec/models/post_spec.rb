# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  content    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Post do

  before do
    # This code is wrong!
    @post= Post.new(title: "My god", content: "Lorem ipsum")
  end

  subject { @post }

######################Validations of Columns##########################
  it { should respond_to(:title) }
  it { should respond_to(:content) }

  it { should be_valid }

  #Title
  describe "when title is not present" do
    before { @post.title = nil }
    it { should_not be_valid }
  end

  describe "with blank title" do
  	before { @post.title = " "}
  	it {should_not be_valid}
  end

  describe "with title too long" do
  	before { @post.title = "a" * 71}
  	it {should_not be_valid}
  end

  describe "when title is already taken" do
    before do
      post_with_same_title = @post.dup
      post_with_same_title.title = @post.title.upcase
      post_with_same_title.save
    end

    it { should_not be_valid }
  end

  #Content
  describe "when content is not present" do
  	before {@post.content = nil}
  	it {should_not be_valid}
  	
  end

  describe "with blank content" do
    before { @post.content = " " }
    it { should_not be_valid }
  end

end
